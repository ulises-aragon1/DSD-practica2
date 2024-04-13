-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/24/2024 23:05:58"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bisiesto IS
    PORT (
	clk_principal : IN std_logic;
	reset_btn : IN std_logic;
	bisiesto_led : OUT std_logic;
	selector : OUT std_logic_vector(3 DOWNTO 0);
	segmentos : OUT std_logic_vector(6 DOWNTO 0)
	);
END bisiesto;

-- Design Ports Information
-- bisiesto_led	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentos[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_btn	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_principal	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bisiesto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_principal : std_logic;
SIGNAL ww_reset_btn : std_logic;
SIGNAL ww_bisiesto_led : std_logic;
SIGNAL ww_selector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segmentos : std_logic_vector(6 DOWNTO 0);
SIGNAL \Cont_Map|salida~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Cont_Map|salida_veloz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_principal~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_btn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~0_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~1\ : std_logic;
SIGNAL \Cont_Map|Add0~2_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~3\ : std_logic;
SIGNAL \Cont_Map|Add0~4_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~5\ : std_logic;
SIGNAL \Cont_Map|Add0~6_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~7\ : std_logic;
SIGNAL \Cont_Map|Add0~8_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~9\ : std_logic;
SIGNAL \Cont_Map|Add0~10_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~11\ : std_logic;
SIGNAL \Cont_Map|Add0~12_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~13\ : std_logic;
SIGNAL \Cont_Map|Add0~14_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~15\ : std_logic;
SIGNAL \Cont_Map|Add0~16_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~17\ : std_logic;
SIGNAL \Cont_Map|Add0~18_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~19\ : std_logic;
SIGNAL \Cont_Map|Add0~20_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~21\ : std_logic;
SIGNAL \Cont_Map|Add0~22_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~23\ : std_logic;
SIGNAL \Cont_Map|Add0~24_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~25\ : std_logic;
SIGNAL \Cont_Map|Add0~26_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~27\ : std_logic;
SIGNAL \Cont_Map|Add0~28_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~29\ : std_logic;
SIGNAL \Cont_Map|Add0~30_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~31\ : std_logic;
SIGNAL \Cont_Map|Add0~32_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~33\ : std_logic;
SIGNAL \Cont_Map|Add0~34_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~35\ : std_logic;
SIGNAL \Cont_Map|Add0~36_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~37\ : std_logic;
SIGNAL \Cont_Map|Add0~38_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~39\ : std_logic;
SIGNAL \Cont_Map|Add0~40_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~41\ : std_logic;
SIGNAL \Cont_Map|Add0~42_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~43\ : std_logic;
SIGNAL \Cont_Map|Add0~44_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~45\ : std_logic;
SIGNAL \Cont_Map|Add0~46_combout\ : std_logic;
SIGNAL \Cont_Map|Add0~47\ : std_logic;
SIGNAL \Cont_Map|Add0~48_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~1_cout\ : std_logic;
SIGNAL \Cont_Map|Add1~2_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~3\ : std_logic;
SIGNAL \Cont_Map|Add1~4_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~5\ : std_logic;
SIGNAL \Cont_Map|Add1~6_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~7\ : std_logic;
SIGNAL \Cont_Map|Add1~8_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~9\ : std_logic;
SIGNAL \Cont_Map|Add1~10_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~11\ : std_logic;
SIGNAL \Cont_Map|Add1~12_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~13\ : std_logic;
SIGNAL \Cont_Map|Add1~14_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~15\ : std_logic;
SIGNAL \Cont_Map|Add1~16_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~17\ : std_logic;
SIGNAL \Cont_Map|Add1~18_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~19\ : std_logic;
SIGNAL \Cont_Map|Add1~20_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~21\ : std_logic;
SIGNAL \Cont_Map|Add1~22_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~23\ : std_logic;
SIGNAL \Cont_Map|Add1~24_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~25\ : std_logic;
SIGNAL \Cont_Map|Add1~26_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~27\ : std_logic;
SIGNAL \Cont_Map|Add1~28_combout\ : std_logic;
SIGNAL \Cont_Map|Add1~29\ : std_logic;
SIGNAL \Cont_Map|Add1~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~122_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~131_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~133_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\ : std_logic;
SIGNAL \MuestraAnyo~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[120]~171_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\ : std_logic;
SIGNAL \MuestraAnyo~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\ : std_logic;
SIGNAL \MuestraAnyo~9_combout\ : std_logic;
SIGNAL \MuestraAnyo~13_combout\ : std_logic;
SIGNAL \MuestraAnyo~16_combout\ : std_logic;
SIGNAL \MuestraAnyo~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~75_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[70]~88_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~91_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[65]~95_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[64]~97_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[77]~100_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[76]~101_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[75]~102_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[74]~103_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[63]~106_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[63]~107_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[73]~108_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[88]~109_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[85]~112_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[82]~118_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[96]~120_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[91]~125_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[102]~133_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[101]~134_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[100]~138_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[114]~140_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[113]~141_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[112]~142_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[110]~144_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[109]~145_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[99]~146_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][10]~4_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][7]~7_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~95_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[19]~97_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~99_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~103_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[24]~106_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~108_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~109_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~110_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~112_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[39]~115_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~118_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~120_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[44]~123_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[43]~124_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[42]~126_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[51]~129_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[49]~131_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[48]~134_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[58]~135_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[55]~138_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[54]~141_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[62]~144_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[61]~145_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[60]~148_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[70]~149_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[67]~153_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[66]~155_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[74]~158_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[73]~159_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[72]~161_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[82]~163_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[81]~164_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[79]~166_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[78]~168_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux6~14_combout\ : std_logic;
SIGNAL \Cont_Map|salida~q\ : std_logic;
SIGNAL \Cont_Map|salida_veloz~q\ : std_logic;
SIGNAL \Cont_Map|Equal0~0_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~1_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~2_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~3_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~4_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~5_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~6_combout\ : std_logic;
SIGNAL \Cont_Map|Equal0~7_combout\ : std_logic;
SIGNAL \Cont_Map|salida~0_combout\ : std_logic;
SIGNAL \Cont_Map|Equal1~0_combout\ : std_logic;
SIGNAL \Cont_Map|Equal1~1_combout\ : std_logic;
SIGNAL \Cont_Map|Equal1~2_combout\ : std_logic;
SIGNAL \Cont_Map|Equal1~3_combout\ : std_logic;
SIGNAL \Cont_Map|Equal1~4_combout\ : std_logic;
SIGNAL \Cont_Map|salida_veloz~0_combout\ : std_logic;
SIGNAL \Cont_Map|salida_veloz~1_combout\ : std_logic;
SIGNAL \Cont_Map|cont~0_combout\ : std_logic;
SIGNAL \Cont_Map|cont~1_combout\ : std_logic;
SIGNAL \Cont_Map|cont~2_combout\ : std_logic;
SIGNAL \Cont_Map|cont~3_combout\ : std_logic;
SIGNAL \Cont_Map|cont~4_combout\ : std_logic;
SIGNAL \Cont_Map|cont~5_combout\ : std_logic;
SIGNAL \Cont_Map|cont~6_combout\ : std_logic;
SIGNAL \Cont_Map|cont~7_combout\ : std_logic;
SIGNAL \Cont_Map|cont~8_combout\ : std_logic;
SIGNAL \Cont_Map|cont~9_combout\ : std_logic;
SIGNAL \Cont_Map|cont~10_combout\ : std_logic;
SIGNAL \Cont_Map|cont~11_combout\ : std_logic;
SIGNAL \Cont_Map|Equal1~5_combout\ : std_logic;
SIGNAL \Cont_Map|cont_veloz~0_combout\ : std_logic;
SIGNAL \Cont_Map|cont_veloz~1_combout\ : std_logic;
SIGNAL \Cont_Map|cont_veloz~2_combout\ : std_logic;
SIGNAL \Cont_Map|cont_veloz~3_combout\ : std_logic;
SIGNAL \Cont_Map|cont_veloz~4_combout\ : std_logic;
SIGNAL \Cont_Map|cont_veloz~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~151_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[79]~152_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[87]~156_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[86]~157_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[84]~159_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[97]~160_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[95]~162_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[94]~163_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[93]~164_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[106]~166_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[105]~167_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[103]~169_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[115]~171_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[111]~175_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][5]~9_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~170_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~172_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~173_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[34]~174_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[40]~177_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[46]~179_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[45]~180_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[52]~182_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[57]~185_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[56]~186_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[64]~187_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[69]~190_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[76]~192_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[80]~196_combout\ : std_logic;
SIGNAL \Mux6~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[83]~179_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~198_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[50]~199_combout\ : std_logic;
SIGNAL \clk_principal~input_o\ : std_logic;
SIGNAL \Cont_Map|salida~clkctrl_outclk\ : std_logic;
SIGNAL \Cont_Map|salida_veloz~clkctrl_outclk\ : std_logic;
SIGNAL \clk_principal~inputclkctrl_outclk\ : std_logic;
SIGNAL \Cont_Map|salida~feeder_combout\ : std_logic;
SIGNAL \Cont_Map|salida_veloz~feeder_combout\ : std_logic;
SIGNAL \bisiesto_led~output_o\ : std_logic;
SIGNAL \selector[0]~output_o\ : std_logic;
SIGNAL \selector[1]~output_o\ : std_logic;
SIGNAL \selector[2]~output_o\ : std_logic;
SIGNAL \selector[3]~output_o\ : std_logic;
SIGNAL \segmentos[0]~output_o\ : std_logic;
SIGNAL \segmentos[1]~output_o\ : std_logic;
SIGNAL \segmentos[2]~output_o\ : std_logic;
SIGNAL \segmentos[3]~output_o\ : std_logic;
SIGNAL \segmentos[4]~output_o\ : std_logic;
SIGNAL \segmentos[5]~output_o\ : std_logic;
SIGNAL \segmentos[6]~output_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \anyos[1]~9_combout\ : std_logic;
SIGNAL \reset_btn~input_o\ : std_logic;
SIGNAL \reset_btn~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \anyos~6_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \anyos~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \anyos~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \anyos~3_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \anyos~2_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \anyos~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \anyos~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~123_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~132_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \anyos~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \anyos~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\ : std_logic;
SIGNAL \MuestraAnyo~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\ : std_logic;
SIGNAL \MuestraAnyo~11_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\ : std_logic;
SIGNAL \MuestraAnyo~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\ : std_logic;
SIGNAL \MuestraAnyo~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ : std_logic;
SIGNAL \MuestraAnyo~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ : std_logic;
SIGNAL \MuestraAnyo~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\ : std_logic;
SIGNAL \MuestraAnyo~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \MuestraAnyo~2_combout\ : std_logic;
SIGNAL \MuestraAnyo~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ : std_logic;
SIGNAL \MuestraAnyo~6_combout\ : std_logic;
SIGNAL \MuestraAnyo~7_combout\ : std_logic;
SIGNAL \MuestraAnyo~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ : std_logic;
SIGNAL \MuestraAnyo~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\ : std_logic;
SIGNAL \MuestraAnyo~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\ : std_logic;
SIGNAL \MuestraAnyo~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\ : std_logic;
SIGNAL \MuestraAnyo~21_combout\ : std_logic;
SIGNAL \MuestraAnyo~22_combout\ : std_logic;
SIGNAL \MuestraAnyo~23_combout\ : std_logic;
SIGNAL \MuestraAnyo~24_combout\ : std_logic;
SIGNAL \cont_display[0]~1_combout\ : std_logic;
SIGNAL \cont_display[1]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[116]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[115]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[77]~177_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[69]~89_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~90_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[67]~92_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[66]~93_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[65]~94_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[64]~96_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[76]~154_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[75]~178_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[74]~104_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[73]~105_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[79]~98_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[78]~99_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[87]~110_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[86]~111_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[85]~158_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[84]~113_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[83]~114_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[82]~115_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[68]~150_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[78]~153_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[88]~155_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[97]~119_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[96]~161_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[95]~121_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[94]~122_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[93]~123_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[92]~124_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[81]~127_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[81]~126_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[91]~128_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[105]~130_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[104]~131_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[103]~132_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[72]~117_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[72]~116_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[92]~165_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[102]~170_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[101]~180_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[100]~135_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[106]~129_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[115]~139_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[104]~168_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[114]~172_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[113]~173_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[112]~174_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[111]~143_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[90]~137_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[90]~136_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[110]~176_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[99]~147_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~16_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[109]~148_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[2]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][8]~6_combout\ : std_logic;
SIGNAL \Mult1|mult_core|romout[0][6]~8_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|quotient[1]~2_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[21]~94_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[20]~171_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[19]~96_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[18]~98_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[24]~105_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[28]~100_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[27]~101_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~102_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[25]~104_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~111_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~113_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[34]~107_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[26]~197_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~175_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~176_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~116_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~117_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~119_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[40]~114_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[39]~178_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[45]~122_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[44]~181_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[43]~125_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[42]~127_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[46]~121_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[52]~128_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[51]~183_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[50]~130_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[49]~132_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[48]~133_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[58]~184_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[57]~136_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[56]~137_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[55]~139_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[54]~140_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[63]~188_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[70]~189_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[64]~142_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[63]~143_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[62]~200_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[61]~146_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[60]~147_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[69]~150_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[68]~151_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[67]~152_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[66]~154_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[76]~156_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[75]~157_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[74]~201_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[73]~160_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[72]~162_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[68]~191_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[75]~193_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[82]~194_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[81]~195_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[80]~165_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[79]~167_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[78]~169_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux6~11_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux6~16_combout\ : std_logic;
SIGNAL \Mux6~18_combout\ : std_logic;
SIGNAL \Mux6~19_combout\ : std_logic;
SIGNAL \Mux6~12_combout\ : std_logic;
SIGNAL \Mux6~13_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~15_combout\ : std_logic;
SIGNAL \Mux6~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Cont_Map|cont\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \Cont_Map|cont_veloz\ : std_logic_vector(16 DOWNTO 0);
SIGNAL anyos : std_logic_vector(11 DOWNTO 0);
SIGNAL cont_display : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~10_combout\ : std_logic;
SIGNAL \ALT_INV_MuestraAnyo~24_combout\ : std_logic;

BEGIN

ww_clk_principal <= clk_principal;
ww_reset_btn <= reset_btn;
bisiesto_led <= ww_bisiesto_led;
selector <= ww_selector;
segmentos <= ww_segmentos;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Cont_Map|salida~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Cont_Map|salida~q\);

\Cont_Map|salida_veloz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Cont_Map|salida_veloz~q\);

\clk_principal~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_principal~input_o\);

\reset_btn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_btn~input_o\);
\ALT_INV_Mux6~10_combout\ <= NOT \Mux6~10_combout\;
\ALT_INV_MuestraAnyo~24_combout\ <= NOT \MuestraAnyo~24_combout\;

-- Location: LCCOMB_X12_Y15_N12
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X12_Y15_N16
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\);

-- Location: LCCOMB_X13_Y15_N20
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X13_Y15_N22
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\);

-- Location: LCCOMB_X12_Y14_N14
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X12_Y14_N16
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X12_Y13_N4
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X12_Y13_N6
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X12_Y13_N8
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X12_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\);

-- Location: LCCOMB_X12_Y13_N12
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\);

-- Location: LCCOMB_X11_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[120]~171_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[120]~171_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\);

-- Location: LCCOMB_X18_Y17_N8
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ = (anyos(8) & (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\)) # (!anyos(8) & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ = CARRY((anyos(8) & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(8),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\);

-- Location: LCCOMB_X18_Y17_N12
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\ = (anyos(10) & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\) # (GND))) # (!anyos(10) & (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ = CARRY((anyos(10)) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(10),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\);

-- Location: LCCOMB_X18_Y15_N10
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\);

-- Location: LCCOMB_X18_Y15_N16
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ & (((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\)) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\) # (GND)))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\);

-- Location: LCCOMB_X18_Y16_N22
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\);

-- Location: LCCOMB_X16_Y16_N10
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\);

-- Location: LCCOMB_X16_Y16_N12
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\);

-- Location: LCCOMB_X17_Y16_N12
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ & (((\Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\);

-- Location: LCCOMB_X17_Y16_N14
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\);

-- Location: LCCOMB_X17_Y16_N16
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\);

-- Location: LCCOMB_X17_Y16_N18
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ & (((\Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\ & (!\Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\);

-- Location: LCCOMB_X18_Y14_N22
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\ = !anyos(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => anyos(1),
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\);

-- Location: LCCOMB_X13_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\ = anyos(5) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ = CARRY(anyos(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(5),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\);

-- Location: LCCOMB_X13_Y20_N22
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ = (anyos(10) & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\) # (GND))) # (!anyos(10) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ = CARRY((anyos(10)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\);

-- Location: LCCOMB_X13_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\ = (anyos(11) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ $ (GND))) # (!anyos(11) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\ = CARRY((anyos(11) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\);

-- Location: LCCOMB_X12_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[101]~63_combout\) # (\Div0|auto_generated|divider|divider|StageOut[101]~62_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[101]~63_combout\) # (\Div0|auto_generated|divider|divider|StageOut[101]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[101]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[101]~62_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\);

-- Location: LCCOMB_X12_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[103]~58_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~59_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[103]~58_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~59_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[103]~58_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[103]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~58_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[103]~59_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\);

-- Location: LCCOMB_X12_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & (((\Div0|auto_generated|divider|divider|StageOut[105]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~55_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & ((((\Div0|auto_generated|divider|divider|StageOut[105]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~55_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ & ((\Div0|auto_generated|divider|divider|StageOut[105]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[105]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[105]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~55_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\);

-- Location: LCCOMB_X11_Y20_N4
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[100]~74_combout\) # (\Div0|auto_generated|divider|divider|StageOut[100]~73_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|StageOut[100]~74_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[100]~73_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\);

-- Location: LCCOMB_X16_Y15_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (anyos(6) & ((\Mult0|mult_core|romout[0][6]~1_combout\ & (!\Add2~5\)) # (!\Mult0|mult_core|romout[0][6]~1_combout\ & (\Add2~5\ & VCC)))) # (!anyos(6) & ((\Mult0|mult_core|romout[0][6]~1_combout\ & ((\Add2~5\) # (GND))) # 
-- (!\Mult0|mult_core|romout[0][6]~1_combout\ & (!\Add2~5\))))
-- \Add2~7\ = CARRY((anyos(6) & (\Mult0|mult_core|romout[0][6]~1_combout\ & !\Add2~5\)) # (!anyos(6) & ((\Mult0|mult_core|romout[0][6]~1_combout\) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(6),
	datab => \Mult0|mult_core|romout[0][6]~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X17_Y12_N26
\Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X18_Y12_N20
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[66]~151_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[66]~93_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[66]~151_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[66]~93_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[66]~151_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[66]~93_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[66]~151_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[66]~93_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X18_Y12_N22
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[67]~91_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[67]~91_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[67]~92_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[67]~92_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[67]~91_combout\ & !\Div1|auto_generated|divider|divider|StageOut[67]~92_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[67]~91_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[67]~92_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X16_Y14_N4
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\Div1|auto_generated|divider|divider|StageOut[63]~107_combout\) # (\Div1|auto_generated|divider|divider|StageOut[63]~106_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[63]~107_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[63]~106_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X18_Y13_N10
\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[75]~102_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[75]~178_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[75]~102_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[75]~178_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[75]~102_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[75]~178_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[75]~102_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[75]~178_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X18_Y13_N16
\Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (((\Div1|auto_generated|divider|divider|StageOut[78]~153_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[78]~99_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ & (!\Div1|auto_generated|divider|divider|StageOut[78]~153_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[78]~99_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[78]~153_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[78]~99_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[78]~153_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[78]~99_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\);

-- Location: LCCOMB_X17_Y13_N18
\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[86]~157_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[86]~111_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[86]~157_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[86]~111_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[86]~157_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[86]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[86]~157_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[86]~111_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\);

-- Location: LCCOMB_X16_Y13_N16
\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[91]~125_combout\) # (\Div1|auto_generated|divider|divider|StageOut[91]~128_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[91]~125_combout\) # (\Div1|auto_generated|divider|divider|StageOut[91]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[91]~125_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[91]~128_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X16_Y13_N24
\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[95]~162_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[95]~121_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[95]~162_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[95]~121_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[95]~162_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[95]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[95]~162_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[95]~121_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\);

-- Location: LCCOMB_X14_Y12_N10
\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[100]~138_combout\) # (\Div1|auto_generated|divider|divider|StageOut[100]~135_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[100]~138_combout\) # (\Div1|auto_generated|divider|divider|StageOut[100]~135_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[100]~138_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[100]~135_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\);

-- Location: LCCOMB_X14_Y12_N14
\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[102]~133_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[102]~170_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[102]~133_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[102]~170_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[102]~133_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[102]~170_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[102]~133_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[102]~170_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\);

-- Location: LCCOMB_X14_Y12_N16
\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[103]~169_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[103]~169_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[103]~132_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[103]~132_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[103]~169_combout\ & !\Div1|auto_generated|divider|divider|StageOut[103]~132_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[103]~169_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[103]~132_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\);

-- Location: LCCOMB_X14_Y12_N18
\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[104]~168_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[104]~131_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[104]~168_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[104]~131_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[104]~168_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[104]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[104]~168_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[104]~131_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\);

-- Location: LCCOMB_X14_Y13_N26
\Div1|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & (!\Div1|auto_generated|divider|op_1~1\)) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \Div1|auto_generated|divider|op_1~3\ = CARRY((!\Div1|auto_generated|divider|op_1~1\) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~1\,
	combout => \Div1|auto_generated|divider|op_1~2_combout\,
	cout => \Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X16_Y17_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\Add2~6_combout\ $ (\Mult1|mult_core|romout[0][6]~8_combout\ $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\Add2~6_combout\ & ((!\Add3~7\) # (!\Mult1|mult_core|romout[0][6]~8_combout\))) # (!\Add2~6_combout\ & (!\Mult1|mult_core|romout[0][6]~8_combout\ & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mult1|mult_core|romout[0][6]~8_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X16_Y17_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((\Add2~10_combout\ $ (\Mult1|mult_core|romout[0][8]~6_combout\ $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((\Add2~10_combout\ & ((!\Add3~11\) # (!\Mult1|mult_core|romout[0][8]~6_combout\))) # (!\Add2~10_combout\ & (!\Mult1|mult_core|romout[0][8]~6_combout\ & !\Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Mult1|mult_core|romout[0][8]~6_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X16_Y17_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = ((\Mult1|mult_core|romout[0][10]~4_combout\ $ (\Add2~14_combout\ $ (\Add3~15\)))) # (GND)
-- \Add3~17\ = CARRY((\Mult1|mult_core|romout[0][10]~4_combout\ & (\Add2~14_combout\ & !\Add3~15\)) # (!\Mult1|mult_core|romout[0][10]~4_combout\ & ((\Add2~14_combout\) # (!\Add3~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][10]~4_combout\,
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X16_Y17_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Add2~18_combout\ & (!\Add3~21\)) # (!\Add2~18_combout\ & (\Add3~21\ & VCC))
-- \Add3~23\ = CARRY((\Add2~18_combout\ & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X17_Y20_N6
\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X17_Y20_N8
\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X17_Y20_N10
\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X17_Y19_N4
\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[26]~197_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[26]~102_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[26]~197_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[26]~102_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~197_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[26]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[26]~197_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[26]~102_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X16_Y19_N12
\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[30]~112_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~113_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[30]~112_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[30]~112_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[30]~113_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X16_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[32]~109_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~176_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[32]~109_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~176_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[32]~109_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[32]~109_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[32]~176_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X13_Y19_N6
\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[44]~123_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[44]~181_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[44]~123_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[44]~181_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[44]~123_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[44]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[44]~123_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[44]~181_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X12_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[51]~129_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[51]~183_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[51]~129_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[51]~183_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[51]~129_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[51]~183_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[51]~129_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[51]~183_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X12_Y21_N2
\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[55]~138_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[55]~139_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[55]~138_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[55]~139_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[55]~138_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[55]~139_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[55]~138_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[55]~139_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X12_Y21_N6
\Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[57]~185_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[57]~136_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[57]~185_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[57]~136_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[57]~185_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[57]~136_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[57]~185_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[57]~136_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X12_Y18_N26
\Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[63]~188_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[63]~143_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[63]~188_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[63]~143_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[63]~188_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[63]~143_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[63]~188_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[63]~143_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X11_Y18_N8
\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[67]~153_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[67]~152_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[67]~153_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[67]~152_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[67]~153_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[67]~152_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[67]~153_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[67]~152_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X11_Y18_N10
\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[68]~191_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~151_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[68]~191_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~151_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[68]~191_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[68]~191_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[68]~151_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X13_Y18_N18
\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[74]~158_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[74]~201_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[74]~158_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[74]~201_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[74]~158_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[74]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[74]~158_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[74]~201_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X13_Y18_N20
\Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[75]~193_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[75]~157_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[75]~193_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[75]~157_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[75]~193_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[75]~157_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[75]~193_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[75]~157_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X11_Y17_N12
\Div2|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (!\Div2|auto_generated|divider|op_1~1\)) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|op_1~1\) # (GND)))
-- \Div2|auto_generated|divider|op_1~3\ = CARRY((!\Div2|auto_generated|divider|op_1~1\) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|op_1~1\,
	combout => \Div2|auto_generated|divider|op_1~2_combout\,
	cout => \Div2|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X14_Y16_N2
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = anyos(0) $ (VCC)
-- \Add1~1\ = CARRY(anyos(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X3_Y11_N8
\Cont_Map|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~0_combout\ = \Cont_Map|cont\(0) $ (VCC)
-- \Cont_Map|Add0~1\ = CARRY(\Cont_Map|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(0),
	datad => VCC,
	combout => \Cont_Map|Add0~0_combout\,
	cout => \Cont_Map|Add0~1\);

-- Location: LCCOMB_X3_Y11_N10
\Cont_Map|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~2_combout\ = (\Cont_Map|cont\(1) & (!\Cont_Map|Add0~1\)) # (!\Cont_Map|cont\(1) & ((\Cont_Map|Add0~1\) # (GND)))
-- \Cont_Map|Add0~3\ = CARRY((!\Cont_Map|Add0~1\) # (!\Cont_Map|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(1),
	datad => VCC,
	cin => \Cont_Map|Add0~1\,
	combout => \Cont_Map|Add0~2_combout\,
	cout => \Cont_Map|Add0~3\);

-- Location: LCCOMB_X3_Y11_N12
\Cont_Map|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~4_combout\ = (\Cont_Map|cont\(2) & (\Cont_Map|Add0~3\ $ (GND))) # (!\Cont_Map|cont\(2) & (!\Cont_Map|Add0~3\ & VCC))
-- \Cont_Map|Add0~5\ = CARRY((\Cont_Map|cont\(2) & !\Cont_Map|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(2),
	datad => VCC,
	cin => \Cont_Map|Add0~3\,
	combout => \Cont_Map|Add0~4_combout\,
	cout => \Cont_Map|Add0~5\);

-- Location: LCCOMB_X3_Y11_N14
\Cont_Map|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~6_combout\ = (\Cont_Map|cont\(3) & (!\Cont_Map|Add0~5\)) # (!\Cont_Map|cont\(3) & ((\Cont_Map|Add0~5\) # (GND)))
-- \Cont_Map|Add0~7\ = CARRY((!\Cont_Map|Add0~5\) # (!\Cont_Map|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(3),
	datad => VCC,
	cin => \Cont_Map|Add0~5\,
	combout => \Cont_Map|Add0~6_combout\,
	cout => \Cont_Map|Add0~7\);

-- Location: LCCOMB_X3_Y11_N16
\Cont_Map|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~8_combout\ = (\Cont_Map|cont\(4) & (\Cont_Map|Add0~7\ $ (GND))) # (!\Cont_Map|cont\(4) & (!\Cont_Map|Add0~7\ & VCC))
-- \Cont_Map|Add0~9\ = CARRY((\Cont_Map|cont\(4) & !\Cont_Map|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(4),
	datad => VCC,
	cin => \Cont_Map|Add0~7\,
	combout => \Cont_Map|Add0~8_combout\,
	cout => \Cont_Map|Add0~9\);

-- Location: LCCOMB_X3_Y11_N18
\Cont_Map|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~10_combout\ = (\Cont_Map|cont\(5) & (!\Cont_Map|Add0~9\)) # (!\Cont_Map|cont\(5) & ((\Cont_Map|Add0~9\) # (GND)))
-- \Cont_Map|Add0~11\ = CARRY((!\Cont_Map|Add0~9\) # (!\Cont_Map|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(5),
	datad => VCC,
	cin => \Cont_Map|Add0~9\,
	combout => \Cont_Map|Add0~10_combout\,
	cout => \Cont_Map|Add0~11\);

-- Location: LCCOMB_X3_Y11_N20
\Cont_Map|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~12_combout\ = (\Cont_Map|cont\(6) & (\Cont_Map|Add0~11\ $ (GND))) # (!\Cont_Map|cont\(6) & (!\Cont_Map|Add0~11\ & VCC))
-- \Cont_Map|Add0~13\ = CARRY((\Cont_Map|cont\(6) & !\Cont_Map|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(6),
	datad => VCC,
	cin => \Cont_Map|Add0~11\,
	combout => \Cont_Map|Add0~12_combout\,
	cout => \Cont_Map|Add0~13\);

-- Location: LCCOMB_X3_Y11_N22
\Cont_Map|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~14_combout\ = (\Cont_Map|cont\(7) & (!\Cont_Map|Add0~13\)) # (!\Cont_Map|cont\(7) & ((\Cont_Map|Add0~13\) # (GND)))
-- \Cont_Map|Add0~15\ = CARRY((!\Cont_Map|Add0~13\) # (!\Cont_Map|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(7),
	datad => VCC,
	cin => \Cont_Map|Add0~13\,
	combout => \Cont_Map|Add0~14_combout\,
	cout => \Cont_Map|Add0~15\);

-- Location: LCCOMB_X3_Y11_N24
\Cont_Map|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~16_combout\ = (\Cont_Map|cont\(8) & (\Cont_Map|Add0~15\ $ (GND))) # (!\Cont_Map|cont\(8) & (!\Cont_Map|Add0~15\ & VCC))
-- \Cont_Map|Add0~17\ = CARRY((\Cont_Map|cont\(8) & !\Cont_Map|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(8),
	datad => VCC,
	cin => \Cont_Map|Add0~15\,
	combout => \Cont_Map|Add0~16_combout\,
	cout => \Cont_Map|Add0~17\);

-- Location: LCCOMB_X3_Y11_N26
\Cont_Map|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~18_combout\ = (\Cont_Map|cont\(9) & (!\Cont_Map|Add0~17\)) # (!\Cont_Map|cont\(9) & ((\Cont_Map|Add0~17\) # (GND)))
-- \Cont_Map|Add0~19\ = CARRY((!\Cont_Map|Add0~17\) # (!\Cont_Map|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(9),
	datad => VCC,
	cin => \Cont_Map|Add0~17\,
	combout => \Cont_Map|Add0~18_combout\,
	cout => \Cont_Map|Add0~19\);

-- Location: LCCOMB_X3_Y11_N28
\Cont_Map|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~20_combout\ = (\Cont_Map|cont\(10) & (\Cont_Map|Add0~19\ $ (GND))) # (!\Cont_Map|cont\(10) & (!\Cont_Map|Add0~19\ & VCC))
-- \Cont_Map|Add0~21\ = CARRY((\Cont_Map|cont\(10) & !\Cont_Map|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(10),
	datad => VCC,
	cin => \Cont_Map|Add0~19\,
	combout => \Cont_Map|Add0~20_combout\,
	cout => \Cont_Map|Add0~21\);

-- Location: LCCOMB_X3_Y11_N30
\Cont_Map|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~22_combout\ = (\Cont_Map|cont\(11) & (!\Cont_Map|Add0~21\)) # (!\Cont_Map|cont\(11) & ((\Cont_Map|Add0~21\) # (GND)))
-- \Cont_Map|Add0~23\ = CARRY((!\Cont_Map|Add0~21\) # (!\Cont_Map|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(11),
	datad => VCC,
	cin => \Cont_Map|Add0~21\,
	combout => \Cont_Map|Add0~22_combout\,
	cout => \Cont_Map|Add0~23\);

-- Location: LCCOMB_X3_Y10_N0
\Cont_Map|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~24_combout\ = (\Cont_Map|cont\(12) & (\Cont_Map|Add0~23\ $ (GND))) # (!\Cont_Map|cont\(12) & (!\Cont_Map|Add0~23\ & VCC))
-- \Cont_Map|Add0~25\ = CARRY((\Cont_Map|cont\(12) & !\Cont_Map|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(12),
	datad => VCC,
	cin => \Cont_Map|Add0~23\,
	combout => \Cont_Map|Add0~24_combout\,
	cout => \Cont_Map|Add0~25\);

-- Location: LCCOMB_X3_Y10_N2
\Cont_Map|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~26_combout\ = (\Cont_Map|cont\(13) & (!\Cont_Map|Add0~25\)) # (!\Cont_Map|cont\(13) & ((\Cont_Map|Add0~25\) # (GND)))
-- \Cont_Map|Add0~27\ = CARRY((!\Cont_Map|Add0~25\) # (!\Cont_Map|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(13),
	datad => VCC,
	cin => \Cont_Map|Add0~25\,
	combout => \Cont_Map|Add0~26_combout\,
	cout => \Cont_Map|Add0~27\);

-- Location: LCCOMB_X3_Y10_N4
\Cont_Map|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~28_combout\ = (\Cont_Map|cont\(14) & (\Cont_Map|Add0~27\ $ (GND))) # (!\Cont_Map|cont\(14) & (!\Cont_Map|Add0~27\ & VCC))
-- \Cont_Map|Add0~29\ = CARRY((\Cont_Map|cont\(14) & !\Cont_Map|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(14),
	datad => VCC,
	cin => \Cont_Map|Add0~27\,
	combout => \Cont_Map|Add0~28_combout\,
	cout => \Cont_Map|Add0~29\);

-- Location: LCCOMB_X3_Y10_N6
\Cont_Map|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~30_combout\ = (\Cont_Map|cont\(15) & (!\Cont_Map|Add0~29\)) # (!\Cont_Map|cont\(15) & ((\Cont_Map|Add0~29\) # (GND)))
-- \Cont_Map|Add0~31\ = CARRY((!\Cont_Map|Add0~29\) # (!\Cont_Map|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(15),
	datad => VCC,
	cin => \Cont_Map|Add0~29\,
	combout => \Cont_Map|Add0~30_combout\,
	cout => \Cont_Map|Add0~31\);

-- Location: LCCOMB_X3_Y10_N8
\Cont_Map|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~32_combout\ = (\Cont_Map|cont\(16) & (\Cont_Map|Add0~31\ $ (GND))) # (!\Cont_Map|cont\(16) & (!\Cont_Map|Add0~31\ & VCC))
-- \Cont_Map|Add0~33\ = CARRY((\Cont_Map|cont\(16) & !\Cont_Map|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(16),
	datad => VCC,
	cin => \Cont_Map|Add0~31\,
	combout => \Cont_Map|Add0~32_combout\,
	cout => \Cont_Map|Add0~33\);

-- Location: LCCOMB_X3_Y10_N10
\Cont_Map|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~34_combout\ = (\Cont_Map|cont\(17) & (!\Cont_Map|Add0~33\)) # (!\Cont_Map|cont\(17) & ((\Cont_Map|Add0~33\) # (GND)))
-- \Cont_Map|Add0~35\ = CARRY((!\Cont_Map|Add0~33\) # (!\Cont_Map|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(17),
	datad => VCC,
	cin => \Cont_Map|Add0~33\,
	combout => \Cont_Map|Add0~34_combout\,
	cout => \Cont_Map|Add0~35\);

-- Location: LCCOMB_X3_Y10_N12
\Cont_Map|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~36_combout\ = (\Cont_Map|cont\(18) & (\Cont_Map|Add0~35\ $ (GND))) # (!\Cont_Map|cont\(18) & (!\Cont_Map|Add0~35\ & VCC))
-- \Cont_Map|Add0~37\ = CARRY((\Cont_Map|cont\(18) & !\Cont_Map|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(18),
	datad => VCC,
	cin => \Cont_Map|Add0~35\,
	combout => \Cont_Map|Add0~36_combout\,
	cout => \Cont_Map|Add0~37\);

-- Location: LCCOMB_X3_Y10_N14
\Cont_Map|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~38_combout\ = (\Cont_Map|cont\(19) & (!\Cont_Map|Add0~37\)) # (!\Cont_Map|cont\(19) & ((\Cont_Map|Add0~37\) # (GND)))
-- \Cont_Map|Add0~39\ = CARRY((!\Cont_Map|Add0~37\) # (!\Cont_Map|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(19),
	datad => VCC,
	cin => \Cont_Map|Add0~37\,
	combout => \Cont_Map|Add0~38_combout\,
	cout => \Cont_Map|Add0~39\);

-- Location: LCCOMB_X3_Y10_N16
\Cont_Map|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~40_combout\ = (\Cont_Map|cont\(20) & (\Cont_Map|Add0~39\ $ (GND))) # (!\Cont_Map|cont\(20) & (!\Cont_Map|Add0~39\ & VCC))
-- \Cont_Map|Add0~41\ = CARRY((\Cont_Map|cont\(20) & !\Cont_Map|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(20),
	datad => VCC,
	cin => \Cont_Map|Add0~39\,
	combout => \Cont_Map|Add0~40_combout\,
	cout => \Cont_Map|Add0~41\);

-- Location: LCCOMB_X3_Y10_N18
\Cont_Map|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~42_combout\ = (\Cont_Map|cont\(21) & (!\Cont_Map|Add0~41\)) # (!\Cont_Map|cont\(21) & ((\Cont_Map|Add0~41\) # (GND)))
-- \Cont_Map|Add0~43\ = CARRY((!\Cont_Map|Add0~41\) # (!\Cont_Map|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(21),
	datad => VCC,
	cin => \Cont_Map|Add0~41\,
	combout => \Cont_Map|Add0~42_combout\,
	cout => \Cont_Map|Add0~43\);

-- Location: LCCOMB_X3_Y10_N20
\Cont_Map|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~44_combout\ = (\Cont_Map|cont\(22) & (\Cont_Map|Add0~43\ $ (GND))) # (!\Cont_Map|cont\(22) & (!\Cont_Map|Add0~43\ & VCC))
-- \Cont_Map|Add0~45\ = CARRY((\Cont_Map|cont\(22) & !\Cont_Map|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(22),
	datad => VCC,
	cin => \Cont_Map|Add0~43\,
	combout => \Cont_Map|Add0~44_combout\,
	cout => \Cont_Map|Add0~45\);

-- Location: LCCOMB_X3_Y10_N22
\Cont_Map|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~46_combout\ = (\Cont_Map|cont\(23) & (!\Cont_Map|Add0~45\)) # (!\Cont_Map|cont\(23) & ((\Cont_Map|Add0~45\) # (GND)))
-- \Cont_Map|Add0~47\ = CARRY((!\Cont_Map|Add0~45\) # (!\Cont_Map|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont\(23),
	datad => VCC,
	cin => \Cont_Map|Add0~45\,
	combout => \Cont_Map|Add0~46_combout\,
	cout => \Cont_Map|Add0~47\);

-- Location: LCCOMB_X3_Y10_N24
\Cont_Map|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add0~48_combout\ = \Cont_Map|Add0~47\ $ (!\Cont_Map|cont\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cont_Map|cont\(24),
	cin => \Cont_Map|Add0~47\,
	combout => \Cont_Map|Add0~48_combout\);

-- Location: LCCOMB_X2_Y11_N0
\Cont_Map|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~1_cout\ = CARRY((\Cont_Map|cont\(1) & \Cont_Map|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(1),
	datab => \Cont_Map|cont\(0),
	datad => VCC,
	cout => \Cont_Map|Add1~1_cout\);

-- Location: LCCOMB_X2_Y11_N2
\Cont_Map|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~2_combout\ = (\Cont_Map|cont_veloz\(2) & (!\Cont_Map|Add1~1_cout\)) # (!\Cont_Map|cont_veloz\(2) & ((\Cont_Map|Add1~1_cout\) # (GND)))
-- \Cont_Map|Add1~3\ = CARRY((!\Cont_Map|Add1~1_cout\) # (!\Cont_Map|cont_veloz\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(2),
	datad => VCC,
	cin => \Cont_Map|Add1~1_cout\,
	combout => \Cont_Map|Add1~2_combout\,
	cout => \Cont_Map|Add1~3\);

-- Location: LCCOMB_X2_Y11_N4
\Cont_Map|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~4_combout\ = (\Cont_Map|cont_veloz\(3) & (\Cont_Map|Add1~3\ $ (GND))) # (!\Cont_Map|cont_veloz\(3) & (!\Cont_Map|Add1~3\ & VCC))
-- \Cont_Map|Add1~5\ = CARRY((\Cont_Map|cont_veloz\(3) & !\Cont_Map|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(3),
	datad => VCC,
	cin => \Cont_Map|Add1~3\,
	combout => \Cont_Map|Add1~4_combout\,
	cout => \Cont_Map|Add1~5\);

-- Location: LCCOMB_X2_Y11_N6
\Cont_Map|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~6_combout\ = (\Cont_Map|cont_veloz\(4) & (!\Cont_Map|Add1~5\)) # (!\Cont_Map|cont_veloz\(4) & ((\Cont_Map|Add1~5\) # (GND)))
-- \Cont_Map|Add1~7\ = CARRY((!\Cont_Map|Add1~5\) # (!\Cont_Map|cont_veloz\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(4),
	datad => VCC,
	cin => \Cont_Map|Add1~5\,
	combout => \Cont_Map|Add1~6_combout\,
	cout => \Cont_Map|Add1~7\);

-- Location: LCCOMB_X2_Y11_N8
\Cont_Map|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~8_combout\ = (\Cont_Map|cont_veloz\(5) & (\Cont_Map|Add1~7\ $ (GND))) # (!\Cont_Map|cont_veloz\(5) & (!\Cont_Map|Add1~7\ & VCC))
-- \Cont_Map|Add1~9\ = CARRY((\Cont_Map|cont_veloz\(5) & !\Cont_Map|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(5),
	datad => VCC,
	cin => \Cont_Map|Add1~7\,
	combout => \Cont_Map|Add1~8_combout\,
	cout => \Cont_Map|Add1~9\);

-- Location: LCCOMB_X2_Y11_N10
\Cont_Map|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~10_combout\ = (\Cont_Map|cont_veloz\(6) & (!\Cont_Map|Add1~9\)) # (!\Cont_Map|cont_veloz\(6) & ((\Cont_Map|Add1~9\) # (GND)))
-- \Cont_Map|Add1~11\ = CARRY((!\Cont_Map|Add1~9\) # (!\Cont_Map|cont_veloz\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(6),
	datad => VCC,
	cin => \Cont_Map|Add1~9\,
	combout => \Cont_Map|Add1~10_combout\,
	cout => \Cont_Map|Add1~11\);

-- Location: LCCOMB_X2_Y11_N12
\Cont_Map|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~12_combout\ = (\Cont_Map|cont_veloz\(7) & (\Cont_Map|Add1~11\ $ (GND))) # (!\Cont_Map|cont_veloz\(7) & (!\Cont_Map|Add1~11\ & VCC))
-- \Cont_Map|Add1~13\ = CARRY((\Cont_Map|cont_veloz\(7) & !\Cont_Map|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(7),
	datad => VCC,
	cin => \Cont_Map|Add1~11\,
	combout => \Cont_Map|Add1~12_combout\,
	cout => \Cont_Map|Add1~13\);

-- Location: LCCOMB_X2_Y11_N14
\Cont_Map|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~14_combout\ = (\Cont_Map|cont_veloz\(8) & (!\Cont_Map|Add1~13\)) # (!\Cont_Map|cont_veloz\(8) & ((\Cont_Map|Add1~13\) # (GND)))
-- \Cont_Map|Add1~15\ = CARRY((!\Cont_Map|Add1~13\) # (!\Cont_Map|cont_veloz\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(8),
	datad => VCC,
	cin => \Cont_Map|Add1~13\,
	combout => \Cont_Map|Add1~14_combout\,
	cout => \Cont_Map|Add1~15\);

-- Location: LCCOMB_X2_Y11_N16
\Cont_Map|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~16_combout\ = (\Cont_Map|cont_veloz\(9) & (\Cont_Map|Add1~15\ $ (GND))) # (!\Cont_Map|cont_veloz\(9) & (!\Cont_Map|Add1~15\ & VCC))
-- \Cont_Map|Add1~17\ = CARRY((\Cont_Map|cont_veloz\(9) & !\Cont_Map|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(9),
	datad => VCC,
	cin => \Cont_Map|Add1~15\,
	combout => \Cont_Map|Add1~16_combout\,
	cout => \Cont_Map|Add1~17\);

-- Location: LCCOMB_X2_Y11_N18
\Cont_Map|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~18_combout\ = (\Cont_Map|cont_veloz\(10) & (!\Cont_Map|Add1~17\)) # (!\Cont_Map|cont_veloz\(10) & ((\Cont_Map|Add1~17\) # (GND)))
-- \Cont_Map|Add1~19\ = CARRY((!\Cont_Map|Add1~17\) # (!\Cont_Map|cont_veloz\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(10),
	datad => VCC,
	cin => \Cont_Map|Add1~17\,
	combout => \Cont_Map|Add1~18_combout\,
	cout => \Cont_Map|Add1~19\);

-- Location: LCCOMB_X2_Y11_N20
\Cont_Map|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~20_combout\ = (\Cont_Map|cont_veloz\(11) & (\Cont_Map|Add1~19\ $ (GND))) # (!\Cont_Map|cont_veloz\(11) & (!\Cont_Map|Add1~19\ & VCC))
-- \Cont_Map|Add1~21\ = CARRY((\Cont_Map|cont_veloz\(11) & !\Cont_Map|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(11),
	datad => VCC,
	cin => \Cont_Map|Add1~19\,
	combout => \Cont_Map|Add1~20_combout\,
	cout => \Cont_Map|Add1~21\);

-- Location: LCCOMB_X2_Y11_N22
\Cont_Map|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~22_combout\ = (\Cont_Map|cont_veloz\(12) & (!\Cont_Map|Add1~21\)) # (!\Cont_Map|cont_veloz\(12) & ((\Cont_Map|Add1~21\) # (GND)))
-- \Cont_Map|Add1~23\ = CARRY((!\Cont_Map|Add1~21\) # (!\Cont_Map|cont_veloz\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(12),
	datad => VCC,
	cin => \Cont_Map|Add1~21\,
	combout => \Cont_Map|Add1~22_combout\,
	cout => \Cont_Map|Add1~23\);

-- Location: LCCOMB_X2_Y11_N24
\Cont_Map|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~24_combout\ = (\Cont_Map|cont_veloz\(13) & (\Cont_Map|Add1~23\ $ (GND))) # (!\Cont_Map|cont_veloz\(13) & (!\Cont_Map|Add1~23\ & VCC))
-- \Cont_Map|Add1~25\ = CARRY((\Cont_Map|cont_veloz\(13) & !\Cont_Map|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(13),
	datad => VCC,
	cin => \Cont_Map|Add1~23\,
	combout => \Cont_Map|Add1~24_combout\,
	cout => \Cont_Map|Add1~25\);

-- Location: LCCOMB_X2_Y11_N26
\Cont_Map|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~26_combout\ = (\Cont_Map|cont_veloz\(14) & (!\Cont_Map|Add1~25\)) # (!\Cont_Map|cont_veloz\(14) & ((\Cont_Map|Add1~25\) # (GND)))
-- \Cont_Map|Add1~27\ = CARRY((!\Cont_Map|Add1~25\) # (!\Cont_Map|cont_veloz\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(14),
	datad => VCC,
	cin => \Cont_Map|Add1~25\,
	combout => \Cont_Map|Add1~26_combout\,
	cout => \Cont_Map|Add1~27\);

-- Location: LCCOMB_X2_Y11_N28
\Cont_Map|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~28_combout\ = (\Cont_Map|cont_veloz\(15) & (\Cont_Map|Add1~27\ $ (GND))) # (!\Cont_Map|cont_veloz\(15) & (!\Cont_Map|Add1~27\ & VCC))
-- \Cont_Map|Add1~29\ = CARRY((\Cont_Map|cont_veloz\(15) & !\Cont_Map|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(15),
	datad => VCC,
	cin => \Cont_Map|Add1~27\,
	combout => \Cont_Map|Add1~28_combout\,
	cout => \Cont_Map|Add1~29\);

-- Location: LCCOMB_X2_Y11_N30
\Cont_Map|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Add1~30_combout\ = \Cont_Map|Add1~29\ $ (\Cont_Map|cont_veloz\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Cont_Map|cont_veloz\(16),
	cin => \Cont_Map|Add1~29\,
	combout => \Cont_Map|Add1~30_combout\);

-- Location: LCCOMB_X12_Y16_N8
\Mod0|auto_generated|divider|divider|StageOut[78]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\ = (anyos(11) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(11),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\);

-- Location: LCCOMB_X12_Y16_N4
\Mod0|auto_generated|divider|divider|StageOut[77]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !anyos(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => anyos(10),
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\);

-- Location: LCCOMB_X11_Y16_N22
\Mod0|auto_generated|divider|divider|StageOut[76]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\);

-- Location: LCCOMB_X11_Y16_N30
\Mod0|auto_generated|divider|divider|StageOut[75]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\);

-- Location: LCCOMB_X12_Y16_N2
\Mod0|auto_generated|divider|divider|StageOut[74]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\);

-- Location: LCCOMB_X11_Y16_N26
\Mod0|auto_generated|divider|divider|StageOut[73]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~122_combout\ = (anyos(6) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~122_combout\);

-- Location: LCCOMB_X11_Y15_N14
\Mod0|auto_generated|divider|divider|StageOut[91]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\);

-- Location: LCCOMB_X12_Y15_N26
\Mod0|auto_generated|divider|divider|StageOut[89]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\);

-- Location: LCCOMB_X11_Y15_N12
\Mod0|auto_generated|divider|divider|StageOut[86]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & anyos(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => anyos(6),
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\);

-- Location: LCCOMB_X13_Y16_N16
\Mod0|auto_generated|divider|divider|StageOut[85]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~131_combout\ = (anyos(5) & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~131_combout\);

-- Location: LCCOMB_X13_Y16_N26
\Mod0|auto_generated|divider|divider|StageOut[72]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~133_combout\ = (anyos(5) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~133_combout\);

-- Location: LCCOMB_X11_Y15_N20
\Mod0|auto_generated|divider|divider|StageOut[104]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\);

-- Location: LCCOMB_X13_Y15_N6
\Mod0|auto_generated|divider|divider|StageOut[102]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~137_combout\);

-- Location: LCCOMB_X14_Y15_N6
\Mod0|auto_generated|divider|divider|StageOut[101]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\);

-- Location: LCCOMB_X13_Y15_N4
\Mod0|auto_generated|divider|divider|StageOut[100]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\);

-- Location: LCCOMB_X11_Y15_N2
\Mod0|auto_generated|divider|divider|StageOut[99]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\);

-- Location: LCCOMB_X11_Y15_N10
\Mod0|auto_generated|divider|divider|StageOut[97]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\);

-- Location: LCCOMB_X13_Y14_N18
\Mod0|auto_generated|divider|divider|StageOut[116]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\);

-- Location: LCCOMB_X13_Y14_N10
\Mod0|auto_generated|divider|divider|StageOut[114]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\);

-- Location: LCCOMB_X13_Y14_N20
\Mod0|auto_generated|divider|divider|StageOut[113]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~150_combout\);

-- Location: LCCOMB_X13_Y14_N6
\Mod0|auto_generated|divider|divider|StageOut[110]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\);

-- Location: LCCOMB_X14_Y14_N24
\Mod0|auto_generated|divider|divider|StageOut[109]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & !anyos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => anyos(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\);

-- Location: LCCOMB_X14_Y15_N12
\Mod0|auto_generated|divider|divider|StageOut[96]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\ = (!anyos(3) & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\);

-- Location: LCCOMB_X11_Y13_N14
\Mod0|auto_generated|divider|divider|StageOut[126]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\);

-- Location: LCCOMB_X11_Y13_N8
\Mod0|auto_generated|divider|divider|StageOut[125]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~160_combout\);

-- Location: LCCOMB_X12_Y14_N4
\Mod0|auto_generated|divider|divider|StageOut[129]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\);

-- Location: LCCOMB_X13_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[130]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\);

-- Location: LCCOMB_X12_Y13_N28
\MuestraAnyo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	combout => \MuestraAnyo~1_combout\);

-- Location: LCCOMB_X11_Y13_N28
\Mod0|auto_generated|divider|divider|StageOut[120]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[120]~171_combout\ = (!anyos(1) & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[120]~171_combout\);

-- Location: LCCOMB_X18_Y15_N6
\Mod1|auto_generated|divider|divider|StageOut[104]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\);

-- Location: LCCOMB_X18_Y17_N28
\Mod1|auto_generated|divider|divider|StageOut[103]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\);

-- Location: LCCOMB_X18_Y15_N30
\Mod1|auto_generated|divider|divider|StageOut[102]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\ = (!anyos(9) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(9),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[102]~86_combout\);

-- Location: LCCOMB_X18_Y17_N20
\Mod1|auto_generated|divider|divider|StageOut[101]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\);

-- Location: LCCOMB_X18_Y17_N2
\Mod1|auto_generated|divider|divider|StageOut[100]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ = (!anyos(7) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(7),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\);

-- Location: LCCOMB_X18_Y15_N28
\Mod1|auto_generated|divider|divider|StageOut[99]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\ = (anyos(6) & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[99]~93_combout\);

-- Location: LCCOMB_X17_Y15_N16
\Mod1|auto_generated|divider|divider|StageOut[115]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\);

-- Location: LCCOMB_X19_Y16_N6
\Mod1|auto_generated|divider|divider|StageOut[112]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ = (anyos(6) & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\);

-- Location: LCCOMB_X16_Y16_N6
\Mod1|auto_generated|divider|divider|StageOut[98]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\ = (anyos(5) & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\);

-- Location: LCCOMB_X16_Y16_N8
\Mod1|auto_generated|divider|divider|StageOut[111]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\);

-- Location: LCCOMB_X16_Y16_N22
\Mod1|auto_generated|divider|divider|StageOut[110]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\ = (!anyos(4) & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[110]~110_combout\);

-- Location: LCCOMB_X16_Y16_N24
\Mod1|auto_generated|divider|divider|StageOut[97]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\ = (!anyos(4) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[97]~111_combout\);

-- Location: LCCOMB_X16_Y16_N30
\Mod1|auto_generated|divider|divider|StageOut[97]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\ = (!anyos(4) & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[97]~112_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Mod1|auto_generated|divider|divider|StageOut[110]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[110]~113_combout\);

-- Location: LCCOMB_X17_Y16_N28
\MuestraAnyo~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~4_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[9]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[10]~12_combout\,
	combout => \MuestraAnyo~4_combout\);

-- Location: LCCOMB_X17_Y15_N10
\Mod1|auto_generated|divider|divider|StageOut[109]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\);

-- Location: LCCOMB_X18_Y14_N2
\Mod1|auto_generated|divider|divider|StageOut[108]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & !anyos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => anyos(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[108]~123_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Mod1|auto_generated|divider|divider|StageOut[108]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & !anyos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => anyos(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[108]~124_combout\);

-- Location: LCCOMB_X18_Y14_N0
\Mod1|auto_generated|divider|divider|StageOut[120]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & !anyos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => anyos(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[120]~126_combout\);

-- Location: LCCOMB_X18_Y14_N26
\Mod1|auto_generated|divider|divider|StageOut[120]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[120]~127_combout\);

-- Location: LCCOMB_X17_Y16_N0
\MuestraAnyo~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~9_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\,
	combout => \MuestraAnyo~9_combout\);

-- Location: LCCOMB_X18_Y14_N30
\MuestraAnyo~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~13_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\) # ((!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\,
	combout => \MuestraAnyo~13_combout\);

-- Location: LCCOMB_X12_Y13_N26
\MuestraAnyo~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\,
	combout => \MuestraAnyo~16_combout\);

-- Location: LCCOMB_X11_Y13_N12
\MuestraAnyo~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~19_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \MuestraAnyo~19_combout\);

-- Location: LCCOMB_X13_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[108]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~49_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~49_combout\);

-- Location: LCCOMB_X13_Y21_N20
\Div0|auto_generated|divider|divider|StageOut[107]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~51_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~51_combout\);

-- Location: LCCOMB_X12_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[106]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~52_combout\ = (!anyos(9) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(9),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~52_combout\);

-- Location: LCCOMB_X13_Y21_N30
\Div0|auto_generated|divider|divider|StageOut[105]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~54_combout\ = (!anyos(8) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~54_combout\);

-- Location: LCCOMB_X11_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[104]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~56_combout\ = (!anyos(7) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~56_combout\);

-- Location: LCCOMB_X11_Y20_N12
\Div0|auto_generated|divider|divider|StageOut[103]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~58_combout\ = (anyos(6) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(6),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~58_combout\);

-- Location: LCCOMB_X13_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[102]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~61_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~61_combout\);

-- Location: LCCOMB_X11_Y20_N16
\Div0|auto_generated|divider|divider|StageOut[101]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~63_combout\ = (!anyos(4) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~63_combout\);

-- Location: LCCOMB_X14_Y20_N30
\Div0|auto_generated|divider|divider|StageOut[117]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~66_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~66_combout\);

-- Location: LCCOMB_X12_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[115]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~68_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~68_combout\);

-- Location: LCCOMB_X12_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[113]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~71_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~71_combout\);

-- Location: LCCOMB_X11_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[100]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~73_combout\ = (!anyos(3) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~73_combout\);

-- Location: LCCOMB_X11_Y20_N22
\Div0|auto_generated|divider|divider|StageOut[100]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~74_combout\ = (!anyos(3) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~74_combout\);

-- Location: LCCOMB_X14_Y20_N26
\Div0|auto_generated|divider|divider|StageOut[112]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~75_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~75_combout\);

-- Location: LCCOMB_X16_Y15_N26
\Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\) # (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X16_Y11_N24
\Div1|auto_generated|divider|my_abs_num|cs2a[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & (\Add2~16_combout\ $ (!\Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datac => \Add2~18_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\);

-- Location: LCCOMB_X16_Y11_N14
\Div1|auto_generated|divider|my_abs_num|cs2a[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\ = \Add2~16_combout\ $ (\Add2~18_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datac => \Add2~18_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\);

-- Location: LCCOMB_X17_Y14_N26
\Div1|auto_generated|divider|my_abs_num|cs2a[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\ = \Add2~18_combout\ $ (\Add2~12_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \Add2~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\);

-- Location: LCCOMB_X17_Y12_N12
\Div1|auto_generated|divider|divider|StageOut[70]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[70]~88_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[70]~88_combout\);

-- Location: LCCOMB_X17_Y12_N10
\Div1|auto_generated|divider|divider|StageOut[67]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~91_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~91_combout\);

-- Location: LCCOMB_X17_Y12_N14
\Div1|auto_generated|divider|divider|StageOut[65]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[65]~95_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[65]~95_combout\);

-- Location: LCCOMB_X18_Y12_N10
\Div1|auto_generated|divider|divider|StageOut[64]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[64]~97_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add2~18_combout\ $ (\Add2~8_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~8_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[64]~97_combout\);

-- Location: LCCOMB_X18_Y13_N26
\Div1|auto_generated|divider|divider|StageOut[77]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[77]~100_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[77]~100_combout\);

-- Location: LCCOMB_X18_Y12_N2
\Div1|auto_generated|divider|divider|StageOut[76]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[76]~101_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[76]~101_combout\);

-- Location: LCCOMB_X16_Y12_N14
\Div1|auto_generated|divider|divider|StageOut[75]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[75]~102_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[75]~102_combout\);

-- Location: LCCOMB_X16_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[74]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[74]~103_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ $ (\Add2~18_combout\ $ (!\Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Add2~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[74]~103_combout\);

-- Location: LCCOMB_X16_Y14_N0
\Div1|auto_generated|divider|divider|StageOut[63]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[63]~106_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[63]~106_combout\);

-- Location: LCCOMB_X16_Y14_N26
\Div1|auto_generated|divider|divider|StageOut[63]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[63]~107_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[63]~107_combout\);

-- Location: LCCOMB_X16_Y14_N8
\Div1|auto_generated|divider|divider|StageOut[73]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[73]~108_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[73]~108_combout\);

-- Location: LCCOMB_X19_Y13_N24
\Div1|auto_generated|divider|divider|StageOut[88]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[88]~109_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[88]~109_combout\);

-- Location: LCCOMB_X17_Y13_N26
\Div1|auto_generated|divider|divider|StageOut[85]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[85]~112_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[85]~112_combout\);

-- Location: LCCOMB_X16_Y14_N20
\Div1|auto_generated|divider|divider|StageOut[82]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[82]~118_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[82]~118_combout\);

-- Location: LCCOMB_X14_Y13_N12
\Div1|auto_generated|divider|divider|StageOut[96]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[96]~120_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[96]~120_combout\);

-- Location: LCCOMB_X16_Y12_N10
\Div1|auto_generated|divider|divider|StageOut[91]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[91]~125_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[91]~125_combout\);

-- Location: LCCOMB_X14_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[102]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[102]~133_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[102]~133_combout\);

-- Location: LCCOMB_X14_Y12_N26
\Div1|auto_generated|divider|divider|StageOut[101]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[101]~134_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[101]~134_combout\);

-- Location: LCCOMB_X16_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[100]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[100]~138_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[100]~138_combout\);

-- Location: LCCOMB_X13_Y12_N12
\Div1|auto_generated|divider|divider|StageOut[114]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[114]~140_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[114]~140_combout\);

-- Location: LCCOMB_X14_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[113]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[113]~141_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[113]~141_combout\);

-- Location: LCCOMB_X13_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[112]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[112]~142_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[112]~142_combout\);

-- Location: LCCOMB_X13_Y12_N10
\Div1|auto_generated|divider|divider|StageOut[110]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[110]~144_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[110]~144_combout\);

-- Location: LCCOMB_X13_Y13_N30
\Div1|auto_generated|divider|divider|StageOut[109]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[109]~145_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[109]~145_combout\);

-- Location: LCCOMB_X13_Y13_N12
\Div1|auto_generated|divider|divider|StageOut[99]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[99]~146_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[99]~146_combout\);

-- Location: LCCOMB_X13_Y17_N30
\Mult1|mult_core|romout[0][10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][10]~4_combout\ = (\Div1|auto_generated|divider|quotient[3]~3_combout\ & ((\Div1|auto_generated|divider|quotient[2]~1_combout\) # ((\Div1|auto_generated|divider|quotient[1]~2_combout\ & 
-- \Div1|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \Mult1|mult_core|romout[0][10]~4_combout\);

-- Location: LCCOMB_X13_Y17_N8
\Mult1|mult_core|romout[0][7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][7]~7_combout\ = \Div1|auto_generated|divider|quotient[2]~1_combout\ $ (((\Div1|auto_generated|divider|quotient[1]~2_combout\ & (!\Div1|auto_generated|divider|quotient[0]~0_combout\)) # 
-- (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & (\Div1|auto_generated|divider|quotient[0]~0_combout\ & \Div1|auto_generated|divider|quotient[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \Mult1|mult_core|romout[0][7]~7_combout\);

-- Location: LCCOMB_X16_Y20_N26
\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((\Add3~14_combout\ & (\Add3~16_combout\ & !\Add3~24_combout\)) # (!\Add3~14_combout\ & (!\Add3~16_combout\ & \Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~14_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \Add3~16_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\);

-- Location: LCCOMB_X16_Y20_N10
\Div2|auto_generated|divider|my_abs_num|cs2a[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ & (\Add3~22_combout\ $ (\Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~6_combout\);

-- Location: LCCOMB_X16_Y20_N16
\Div2|auto_generated|divider|my_abs_num|cs2a[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\ = \Add3~22_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ $ (\Add3~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[13]~7_combout\);

-- Location: LCCOMB_X17_Y20_N2
\Div2|auto_generated|divider|divider|StageOut[20]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~95_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~95_combout\);

-- Location: LCCOMB_X17_Y20_N18
\Div2|auto_generated|divider|divider|StageOut[19]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[19]~97_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[19]~97_combout\);

-- Location: LCCOMB_X16_Y20_N14
\Div2|auto_generated|divider|divider|StageOut[18]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~99_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ $ (\Add3~24_combout\ $ (\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Add3~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~99_combout\);

-- Location: LCCOMB_X16_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[25]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~103_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add3~24_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ $ (\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datad => \Add3~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~103_combout\);

-- Location: LCCOMB_X17_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[24]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[24]~106_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[24]~106_combout\);

-- Location: LCCOMB_X16_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[33]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~108_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~108_combout\);

-- Location: LCCOMB_X17_Y19_N20
\Div2|auto_generated|divider|divider|StageOut[32]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~109_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~109_combout\);

-- Location: LCCOMB_X16_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[31]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~110_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~110_combout\);

-- Location: LCCOMB_X16_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[30]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~112_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ (\Add3~14_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \Add3~14_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~112_combout\);

-- Location: LCCOMB_X14_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[39]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[39]~115_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[39]~115_combout\);

-- Location: LCCOMB_X14_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[37]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~118_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~118_combout\);

-- Location: LCCOMB_X14_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[36]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~120_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~120_combout\);

-- Location: LCCOMB_X13_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[44]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[44]~123_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[44]~123_combout\);

-- Location: LCCOMB_X13_Y19_N22
\Div2|auto_generated|divider|divider|StageOut[43]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[43]~124_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[43]~124_combout\);

-- Location: LCCOMB_X16_Y20_N8
\Div2|auto_generated|divider|divider|StageOut[42]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[42]~126_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Add3~24_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ $ (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[42]~126_combout\);

-- Location: LCCOMB_X13_Y19_N20
\Div2|auto_generated|divider|divider|StageOut[51]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[51]~129_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[51]~129_combout\);

-- Location: LCCOMB_X16_Y20_N12
\Div2|auto_generated|divider|divider|StageOut[49]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[49]~131_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\Add3~10_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[49]~131_combout\);

-- Location: LCCOMB_X12_Y19_N22
\Div2|auto_generated|divider|divider|StageOut[48]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[48]~134_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[48]~134_combout\);

-- Location: LCCOMB_X12_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[58]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[58]~135_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[58]~135_combout\);

-- Location: LCCOMB_X12_Y21_N30
\Div2|auto_generated|divider|divider|StageOut[55]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[55]~138_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[55]~138_combout\);

-- Location: LCCOMB_X12_Y21_N12
\Div2|auto_generated|divider|divider|StageOut[54]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[54]~141_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\Add3~24_combout\ $ (\Add3~6_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[54]~141_combout\);

-- Location: LCCOMB_X12_Y18_N12
\Div2|auto_generated|divider|divider|StageOut[62]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[62]~144_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[62]~144_combout\);

-- Location: LCCOMB_X12_Y21_N22
\Div2|auto_generated|divider|divider|StageOut[61]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[61]~145_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ $ (\Add3~6_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[61]~145_combout\);

-- Location: LCCOMB_X12_Y18_N10
\Div2|auto_generated|divider|divider|StageOut[60]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[60]~148_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[60]~148_combout\);

-- Location: LCCOMB_X11_Y18_N30
\Div2|auto_generated|divider|divider|StageOut[70]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[70]~149_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[70]~149_combout\);

-- Location: LCCOMB_X11_Y18_N22
\Div2|auto_generated|divider|divider|StageOut[67]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[67]~153_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[67]~153_combout\);

-- Location: LCCOMB_X11_Y18_N26
\Div2|auto_generated|divider|divider|StageOut[66]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[66]~155_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Add3~24_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Add3~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[66]~155_combout\);

-- Location: LCCOMB_X13_Y18_N10
\Div2|auto_generated|divider|divider|StageOut[74]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[74]~158_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[74]~158_combout\);

-- Location: LCCOMB_X14_Y18_N6
\Div2|auto_generated|divider|divider|StageOut[73]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[73]~159_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\Add3~2_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[73]~159_combout\);

-- Location: LCCOMB_X13_Y18_N30
\Div2|auto_generated|divider|divider|StageOut[72]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[72]~161_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[72]~161_combout\);

-- Location: LCCOMB_X14_Y18_N30
\Div2|auto_generated|divider|divider|StageOut[82]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[82]~163_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[82]~163_combout\);

-- Location: LCCOMB_X13_Y18_N26
\Div2|auto_generated|divider|divider|StageOut[81]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[81]~164_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[81]~164_combout\);

-- Location: LCCOMB_X14_Y18_N10
\Div2|auto_generated|divider|divider|StageOut[79]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[79]~166_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[79]~166_combout\);

-- Location: LCCOMB_X14_Y18_N2
\Div2|auto_generated|divider|divider|StageOut[78]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[78]~168_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (anyos(1) $ (((!\Add3~24_combout\) # (!anyos(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(1),
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => anyos(0),
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[78]~168_combout\);

-- Location: LCCOMB_X14_Y17_N12
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (cont_display(0) & ((anyos(0) $ (!\Add5~1_combout\)))) # (!cont_display(0) & (\Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Add4~0_combout\,
	datac => anyos(0),
	datad => \Add5~1_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X12_Y17_N26
\Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~14_combout\ = (\Mux6~17_combout\) # ((\Mux6~10_combout\ & (\Div2|auto_generated|divider|quotient[0]~0_combout\ $ (!anyos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datab => \Mux6~10_combout\,
	datac => anyos(1),
	datad => \Mux6~17_combout\,
	combout => \Mux6~14_combout\);

-- Location: FF_X1_Y10_N13
\Cont_Map|salida\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|salida~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|salida~q\);

-- Location: FF_X1_Y11_N29
\Cont_Map|salida_veloz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|salida_veloz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|salida_veloz~q\);

-- Location: FF_X3_Y11_N11
\Cont_Map|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(1));

-- Location: FF_X3_Y11_N9
\Cont_Map|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(0));

-- Location: FF_X2_Y10_N25
\Cont_Map|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(24));

-- Location: FF_X3_Y10_N23
\Cont_Map|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(23));

-- Location: LCCOMB_X2_Y10_N26
\Cont_Map|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~0_combout\ = (\Cont_Map|cont\(24) & (!\Cont_Map|cont\(23) & (\Cont_Map|cont\(0) & \Cont_Map|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(24),
	datab => \Cont_Map|cont\(23),
	datac => \Cont_Map|cont\(0),
	datad => \Cont_Map|cont\(1),
	combout => \Cont_Map|Equal0~0_combout\);

-- Location: FF_X2_Y10_N17
\Cont_Map|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(22));

-- Location: FF_X3_Y10_N31
\Cont_Map|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(21));

-- Location: FF_X3_Y10_N29
\Cont_Map|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(20));

-- Location: FF_X2_Y10_N31
\Cont_Map|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(19));

-- Location: LCCOMB_X2_Y10_N4
\Cont_Map|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~1_combout\ = (\Cont_Map|cont\(19) & (\Cont_Map|cont\(22) & (\Cont_Map|cont\(21) & \Cont_Map|cont\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(19),
	datab => \Cont_Map|cont\(22),
	datac => \Cont_Map|cont\(21),
	datad => \Cont_Map|cont\(20),
	combout => \Cont_Map|Equal0~1_combout\);

-- Location: FF_X3_Y10_N27
\Cont_Map|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(18));

-- Location: FF_X2_Y10_N19
\Cont_Map|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(16));

-- Location: FF_X3_Y10_N11
\Cont_Map|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(17));

-- Location: FF_X3_Y10_N7
\Cont_Map|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(15));

-- Location: LCCOMB_X2_Y10_N0
\Cont_Map|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~2_combout\ = (!\Cont_Map|cont\(15) & (\Cont_Map|cont\(16) & (!\Cont_Map|cont\(17) & \Cont_Map|cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(15),
	datab => \Cont_Map|cont\(16),
	datac => \Cont_Map|cont\(17),
	datad => \Cont_Map|cont\(18),
	combout => \Cont_Map|Equal0~2_combout\);

-- Location: FF_X2_Y10_N11
\Cont_Map|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(14));

-- Location: FF_X2_Y10_N9
\Cont_Map|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(13));

-- Location: FF_X2_Y10_N23
\Cont_Map|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(12));

-- Location: FF_X3_Y11_N5
\Cont_Map|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(11));

-- Location: LCCOMB_X2_Y10_N12
\Cont_Map|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~3_combout\ = (\Cont_Map|cont\(14) & (\Cont_Map|cont\(13) & (\Cont_Map|cont\(12) & \Cont_Map|cont\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(14),
	datab => \Cont_Map|cont\(13),
	datac => \Cont_Map|cont\(12),
	datad => \Cont_Map|cont\(11),
	combout => \Cont_Map|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y10_N2
\Cont_Map|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~4_combout\ = (\Cont_Map|Equal0~3_combout\ & (\Cont_Map|Equal0~1_combout\ & (\Cont_Map|Equal0~0_combout\ & \Cont_Map|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|Equal0~3_combout\,
	datab => \Cont_Map|Equal0~1_combout\,
	datac => \Cont_Map|Equal0~0_combout\,
	datad => \Cont_Map|Equal0~2_combout\,
	combout => \Cont_Map|Equal0~4_combout\);

-- Location: FF_X3_Y11_N29
\Cont_Map|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(10));

-- Location: FF_X3_Y11_N27
\Cont_Map|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(9));

-- Location: FF_X3_Y11_N25
\Cont_Map|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(8));

-- Location: FF_X3_Y11_N23
\Cont_Map|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(7));

-- Location: LCCOMB_X3_Y11_N6
\Cont_Map|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~5_combout\ = (!\Cont_Map|cont\(7) & (!\Cont_Map|cont\(10) & (!\Cont_Map|cont\(9) & !\Cont_Map|cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(7),
	datab => \Cont_Map|cont\(10),
	datac => \Cont_Map|cont\(9),
	datad => \Cont_Map|cont\(8),
	combout => \Cont_Map|Equal0~5_combout\);

-- Location: FF_X3_Y11_N13
\Cont_Map|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(2));

-- Location: FF_X3_Y11_N19
\Cont_Map|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(5));

-- Location: FF_X3_Y11_N17
\Cont_Map|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(4));

-- Location: FF_X3_Y11_N15
\Cont_Map|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(3));

-- Location: FF_X3_Y11_N1
\Cont_Map|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont\(6));

-- Location: LCCOMB_X3_Y11_N2
\Cont_Map|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~6_combout\ = (\Cont_Map|cont\(4) & (!\Cont_Map|cont\(6) & (\Cont_Map|cont\(3) & \Cont_Map|cont\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(4),
	datab => \Cont_Map|cont\(6),
	datac => \Cont_Map|cont\(3),
	datad => \Cont_Map|cont\(5),
	combout => \Cont_Map|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y10_N28
\Cont_Map|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal0~7_combout\ = (\Cont_Map|Equal0~5_combout\ & (\Cont_Map|cont\(2) & (\Cont_Map|Equal0~6_combout\ & \Cont_Map|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|Equal0~5_combout\,
	datab => \Cont_Map|cont\(2),
	datac => \Cont_Map|Equal0~6_combout\,
	datad => \Cont_Map|Equal0~4_combout\,
	combout => \Cont_Map|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y10_N10
\Cont_Map|salida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|salida~0_combout\ = \Cont_Map|salida~q\ $ (\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|salida~q\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|salida~0_combout\);

-- Location: FF_X1_Y11_N15
\Cont_Map|cont_veloz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont_veloz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(16));

-- Location: FF_X1_Y11_N27
\Cont_Map|cont_veloz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont_veloz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(15));

-- Location: LCCOMB_X1_Y11_N8
\Cont_Map|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal1~0_combout\ = (\Cont_Map|cont_veloz\(16) & \Cont_Map|cont_veloz\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|cont_veloz\(16),
	datac => \Cont_Map|cont_veloz\(15),
	combout => \Cont_Map|Equal1~0_combout\);

-- Location: FF_X2_Y11_N27
\Cont_Map|cont_veloz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(14));

-- Location: FF_X2_Y11_N25
\Cont_Map|cont_veloz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(13));

-- Location: FF_X2_Y11_N23
\Cont_Map|cont_veloz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(12));

-- Location: FF_X2_Y11_N21
\Cont_Map|cont_veloz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(11));

-- Location: LCCOMB_X1_Y11_N10
\Cont_Map|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal1~1_combout\ = (!\Cont_Map|cont_veloz\(11) & (!\Cont_Map|cont_veloz\(14) & (!\Cont_Map|cont_veloz\(13) & !\Cont_Map|cont_veloz\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(11),
	datab => \Cont_Map|cont_veloz\(14),
	datac => \Cont_Map|cont_veloz\(13),
	datad => \Cont_Map|cont_veloz\(12),
	combout => \Cont_Map|Equal1~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\Cont_Map|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal1~2_combout\ = (\Cont_Map|cont\(1) & (\Cont_Map|cont\(0) & (\Cont_Map|Equal1~0_combout\ & \Cont_Map|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont\(1),
	datab => \Cont_Map|cont\(0),
	datac => \Cont_Map|Equal1~0_combout\,
	datad => \Cont_Map|Equal1~1_combout\,
	combout => \Cont_Map|Equal1~2_combout\);

-- Location: FF_X1_Y11_N13
\Cont_Map|cont_veloz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont_veloz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(10));

-- Location: FF_X1_Y11_N7
\Cont_Map|cont_veloz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont_veloz~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(9));

-- Location: FF_X1_Y11_N3
\Cont_Map|cont_veloz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont_veloz~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(7));

-- Location: FF_X2_Y11_N15
\Cont_Map|cont_veloz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(8));

-- Location: LCCOMB_X1_Y11_N22
\Cont_Map|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal1~3_combout\ = (\Cont_Map|cont_veloz\(10) & (\Cont_Map|cont_veloz\(7) & (!\Cont_Map|cont_veloz\(8) & \Cont_Map|cont_veloz\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(10),
	datab => \Cont_Map|cont_veloz\(7),
	datac => \Cont_Map|cont_veloz\(8),
	datad => \Cont_Map|cont_veloz\(9),
	combout => \Cont_Map|Equal1~3_combout\);

-- Location: FF_X2_Y11_N3
\Cont_Map|cont_veloz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(2));

-- Location: FF_X2_Y11_N7
\Cont_Map|cont_veloz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(4));

-- Location: FF_X2_Y11_N5
\Cont_Map|cont_veloz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(3));

-- Location: FF_X2_Y11_N11
\Cont_Map|cont_veloz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(6));

-- Location: FF_X1_Y11_N17
\Cont_Map|cont_veloz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_principal~inputclkctrl_outclk\,
	d => \Cont_Map|cont_veloz~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Cont_Map|cont_veloz\(5));

-- Location: LCCOMB_X1_Y11_N18
\Cont_Map|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal1~4_combout\ = (\Cont_Map|cont_veloz\(4) & (!\Cont_Map|cont_veloz\(5) & (!\Cont_Map|cont_veloz\(6) & \Cont_Map|cont_veloz\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(4),
	datab => \Cont_Map|cont_veloz\(5),
	datac => \Cont_Map|cont_veloz\(6),
	datad => \Cont_Map|cont_veloz\(3),
	combout => \Cont_Map|Equal1~4_combout\);

-- Location: LCCOMB_X1_Y11_N4
\Cont_Map|salida_veloz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|salida_veloz~0_combout\ = (!\Cont_Map|Equal1~4_combout\) # (!\Cont_Map|cont_veloz\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(2),
	datad => \Cont_Map|Equal1~4_combout\,
	combout => \Cont_Map|salida_veloz~0_combout\);

-- Location: LCCOMB_X1_Y11_N30
\Cont_Map|salida_veloz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|salida_veloz~1_combout\ = \Cont_Map|salida_veloz~q\ $ (((\Cont_Map|Equal1~3_combout\ & (!\Cont_Map|salida_veloz~0_combout\ & \Cont_Map|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|Equal1~3_combout\,
	datab => \Cont_Map|salida_veloz~q\,
	datac => \Cont_Map|salida_veloz~0_combout\,
	datad => \Cont_Map|Equal1~2_combout\,
	combout => \Cont_Map|salida_veloz~1_combout\);

-- Location: LCCOMB_X2_Y10_N24
\Cont_Map|cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~0_combout\ = (!\Cont_Map|Equal0~7_combout\ & \Cont_Map|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal0~7_combout\,
	datad => \Cont_Map|Add0~48_combout\,
	combout => \Cont_Map|cont~0_combout\);

-- Location: LCCOMB_X2_Y10_N16
\Cont_Map|cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~1_combout\ = (!\Cont_Map|Equal0~7_combout\ & \Cont_Map|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal0~7_combout\,
	datad => \Cont_Map|Add0~44_combout\,
	combout => \Cont_Map|cont~1_combout\);

-- Location: LCCOMB_X3_Y10_N30
\Cont_Map|cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~2_combout\ = (!\Cont_Map|Equal0~7_combout\ & \Cont_Map|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal0~7_combout\,
	datad => \Cont_Map|Add0~42_combout\,
	combout => \Cont_Map|cont~2_combout\);

-- Location: LCCOMB_X3_Y10_N28
\Cont_Map|cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~3_combout\ = (!\Cont_Map|Equal0~7_combout\ & \Cont_Map|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal0~7_combout\,
	datad => \Cont_Map|Add0~40_combout\,
	combout => \Cont_Map|cont~3_combout\);

-- Location: LCCOMB_X2_Y10_N30
\Cont_Map|cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~4_combout\ = (\Cont_Map|Add0~38_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add0~38_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~4_combout\);

-- Location: LCCOMB_X3_Y10_N26
\Cont_Map|cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~5_combout\ = (\Cont_Map|Add0~36_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|Add0~36_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~5_combout\);

-- Location: LCCOMB_X2_Y10_N18
\Cont_Map|cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~6_combout\ = (\Cont_Map|Add0~32_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add0~32_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~6_combout\);

-- Location: LCCOMB_X2_Y10_N10
\Cont_Map|cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~7_combout\ = (\Cont_Map|Add0~28_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add0~28_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~7_combout\);

-- Location: LCCOMB_X2_Y10_N8
\Cont_Map|cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~8_combout\ = (\Cont_Map|Add0~26_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add0~26_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~8_combout\);

-- Location: LCCOMB_X2_Y10_N22
\Cont_Map|cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~9_combout\ = (\Cont_Map|Add0~24_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add0~24_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~9_combout\);

-- Location: LCCOMB_X3_Y11_N4
\Cont_Map|cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~10_combout\ = (\Cont_Map|Add0~22_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add0~22_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~10_combout\);

-- Location: LCCOMB_X3_Y11_N0
\Cont_Map|cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont~11_combout\ = (\Cont_Map|Add0~12_combout\ & !\Cont_Map|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Add0~12_combout\,
	datad => \Cont_Map|Equal0~7_combout\,
	combout => \Cont_Map|cont~11_combout\);

-- Location: LCCOMB_X1_Y11_N0
\Cont_Map|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|Equal1~5_combout\ = (\Cont_Map|cont_veloz\(2) & (\Cont_Map|Equal1~4_combout\ & (\Cont_Map|Equal1~3_combout\ & \Cont_Map|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|cont_veloz\(2),
	datab => \Cont_Map|Equal1~4_combout\,
	datac => \Cont_Map|Equal1~3_combout\,
	datad => \Cont_Map|Equal1~2_combout\,
	combout => \Cont_Map|Equal1~5_combout\);

-- Location: LCCOMB_X1_Y11_N14
\Cont_Map|cont_veloz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont_veloz~0_combout\ = (\Cont_Map|Add1~30_combout\ & !\Cont_Map|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add1~30_combout\,
	datad => \Cont_Map|Equal1~5_combout\,
	combout => \Cont_Map|cont_veloz~0_combout\);

-- Location: LCCOMB_X1_Y11_N26
\Cont_Map|cont_veloz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont_veloz~1_combout\ = (!\Cont_Map|Equal1~5_combout\ & \Cont_Map|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal1~5_combout\,
	datad => \Cont_Map|Add1~28_combout\,
	combout => \Cont_Map|cont_veloz~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\Cont_Map|cont_veloz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont_veloz~2_combout\ = (!\Cont_Map|Equal1~5_combout\ & \Cont_Map|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal1~5_combout\,
	datad => \Cont_Map|Add1~18_combout\,
	combout => \Cont_Map|cont_veloz~2_combout\);

-- Location: LCCOMB_X1_Y11_N6
\Cont_Map|cont_veloz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont_veloz~3_combout\ = (!\Cont_Map|Equal1~5_combout\ & \Cont_Map|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|Equal1~5_combout\,
	datad => \Cont_Map|Add1~16_combout\,
	combout => \Cont_Map|cont_veloz~3_combout\);

-- Location: LCCOMB_X1_Y11_N2
\Cont_Map|cont_veloz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont_veloz~4_combout\ = (\Cont_Map|Add1~12_combout\ & !\Cont_Map|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add1~12_combout\,
	datad => \Cont_Map|Equal1~5_combout\,
	combout => \Cont_Map|cont_veloz~4_combout\);

-- Location: LCCOMB_X1_Y11_N16
\Cont_Map|cont_veloz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|cont_veloz~5_combout\ = (\Cont_Map|Add1~8_combout\ & !\Cont_Map|Equal1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Cont_Map|Add1~8_combout\,
	datad => \Cont_Map|Equal1~5_combout\,
	combout => \Cont_Map|cont_veloz~5_combout\);

-- Location: LCCOMB_X11_Y15_N30
\Mod0|auto_generated|divider|divider|StageOut[117]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\);

-- Location: LCCOMB_X12_Y15_N24
\Mod0|auto_generated|divider|divider|StageOut[115]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\);

-- Location: LCCOMB_X13_Y15_N30
\Mod0|auto_generated|divider|divider|StageOut[111]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\);

-- Location: LCCOMB_X13_Y14_N2
\Mod0|auto_generated|divider|divider|StageOut[124]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\);

-- Location: LCCOMB_X13_Y14_N24
\Mod0|auto_generated|divider|divider|StageOut[128]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\);

-- Location: LCCOMB_X17_Y15_N24
\Mod1|auto_generated|divider|divider|StageOut[128]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[128]~128_combout\);

-- Location: LCCOMB_X17_Y15_N26
\Mod1|auto_generated|divider|divider|StageOut[127]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[127]~129_combout\);

-- Location: LCCOMB_X18_Y16_N4
\Mod1|auto_generated|divider|divider|StageOut[126]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\);

-- Location: LCCOMB_X16_Y11_N16
\Div1|auto_generated|divider|divider|StageOut[69]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & (\Add2~18_combout\ $ (!\Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~149_combout\);

-- Location: LCCOMB_X17_Y14_N4
\Div1|auto_generated|divider|divider|StageOut[66]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~151_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ (\Add2~18_combout\ $ (!\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~151_combout\);

-- Location: LCCOMB_X16_Y11_N12
\Div1|auto_generated|divider|divider|StageOut[79]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[79]~152_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[69]~149_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[69]~149_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[79]~152_combout\);

-- Location: LCCOMB_X18_Y13_N4
\Div1|auto_generated|divider|divider|StageOut[87]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[87]~156_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[77]~177_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[77]~177_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[87]~156_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[86]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[86]~157_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[76]~154_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[76]~154_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[86]~157_combout\);

-- Location: LCCOMB_X18_Y13_N30
\Div1|auto_generated|divider|divider|StageOut[84]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[84]~159_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[74]~103_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[74]~103_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[84]~159_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Div1|auto_generated|divider|divider|StageOut[97]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[97]~160_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[87]~156_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[87]~156_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[97]~160_combout\);

-- Location: LCCOMB_X17_Y13_N2
\Div1|auto_generated|divider|divider|StageOut[95]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[95]~162_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[85]~158_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[85]~158_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[95]~162_combout\);

-- Location: LCCOMB_X17_Y13_N4
\Div1|auto_generated|divider|divider|StageOut[94]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[94]~163_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[84]~159_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[84]~159_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[94]~163_combout\);

-- Location: LCCOMB_X17_Y13_N30
\Div1|auto_generated|divider|divider|StageOut[93]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[93]~164_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[83]~179_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[83]~179_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[93]~164_combout\);

-- Location: LCCOMB_X14_Y13_N20
\Div1|auto_generated|divider|divider|StageOut[106]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[106]~166_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[96]~161_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[96]~161_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[106]~166_combout\);

-- Location: LCCOMB_X16_Y13_N10
\Div1|auto_generated|divider|divider|StageOut[105]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[105]~167_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[95]~162_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[95]~162_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[105]~167_combout\);

-- Location: LCCOMB_X16_Y13_N12
\Div1|auto_generated|divider|divider|StageOut[103]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[103]~169_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[93]~164_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[93]~164_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[103]~169_combout\);

-- Location: LCCOMB_X14_Y12_N30
\Div1|auto_generated|divider|divider|StageOut[115]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[115]~171_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[105]~167_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[105]~167_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[115]~171_combout\);

-- Location: LCCOMB_X14_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[111]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[111]~175_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[101]~180_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[101]~180_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[111]~175_combout\);

-- Location: LCCOMB_X14_Y13_N4
\Mult1|mult_core|romout[0][5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][5]~9_combout\ = \Div1|auto_generated|divider|quotient[3]~3_combout\ $ (((\Add2~18_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)) # (!\Add2~18_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[3]~3_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datac => \Add2~18_combout\,
	datad => \Div1|auto_generated|divider|op_1~0_combout\,
	combout => \Mult1|mult_core|romout[0][5]~9_combout\);

-- Location: LCCOMB_X16_Y20_N2
\Div2|auto_generated|divider|divider|StageOut[21]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~170_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Add3~22_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~170_combout\);

-- Location: LCCOMB_X17_Y20_N4
\Div2|auto_generated|divider|divider|StageOut[28]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~172_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[21]~170_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[21]~170_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~172_combout\);

-- Location: LCCOMB_X17_Y20_N30
\Div2|auto_generated|divider|divider|StageOut[27]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~173_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[20]~171_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[20]~171_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~173_combout\);

-- Location: LCCOMB_X17_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[34]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[34]~174_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[27]~173_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~173_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[34]~174_combout\);

-- Location: LCCOMB_X16_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[40]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[40]~177_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[33]~175_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~175_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[40]~177_combout\);

-- Location: LCCOMB_X14_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[46]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[46]~179_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[39]~178_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[39]~178_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[46]~179_combout\);

-- Location: LCCOMB_X14_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[45]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[45]~180_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[38]~198_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[38]~198_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[45]~180_combout\);

-- Location: LCCOMB_X13_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[52]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[52]~182_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[45]~180_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[45]~180_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[52]~182_combout\);

-- Location: LCCOMB_X12_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[57]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[57]~185_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[50]~199_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[50]~199_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[57]~185_combout\);

-- Location: LCCOMB_X12_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[56]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[56]~186_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[49]~131_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[49]~131_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[56]~186_combout\);

-- Location: LCCOMB_X12_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[64]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[64]~187_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[57]~185_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[57]~185_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[64]~187_combout\);

-- Location: LCCOMB_X12_Y18_N6
\Div2|auto_generated|divider|divider|StageOut[69]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[69]~190_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[62]~200_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[62]~200_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[69]~190_combout\);

-- Location: LCCOMB_X11_Y18_N18
\Div2|auto_generated|divider|divider|StageOut[76]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[76]~192_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[69]~190_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[69]~190_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[76]~192_combout\);

-- Location: LCCOMB_X14_Y18_N26
\Div2|auto_generated|divider|divider|StageOut[80]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[80]~196_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[73]~159_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[73]~159_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[80]~196_combout\);

-- Location: LCCOMB_X13_Y17_N6
\Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~17_combout\ = (cont_display(0) & (((!cont_display(1) & \Div1|auto_generated|divider|quotient[1]~2_combout\)))) # (!cont_display(0) & (\Div2|auto_generated|divider|quotient[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	datac => cont_display(1),
	datad => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	combout => \Mux6~17_combout\);

-- Location: LCCOMB_X13_Y16_N30
\Mod0|auto_generated|divider|divider|StageOut[98]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (anyos(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => anyos(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\);

-- Location: LCCOMB_X18_Y17_N26
\Mod1|auto_generated|divider|divider|StageOut[114]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (!anyos(8))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(8),
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\);

-- Location: LCCOMB_X18_Y17_N4
\Mod1|auto_generated|divider|divider|StageOut[113]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((!anyos(7)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => anyos(7),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\);

-- Location: LCCOMB_X16_Y16_N26
\Mod1|auto_generated|divider|divider|StageOut[123]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((!anyos(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[2]~16_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datac => anyos(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\);

-- Location: LCCOMB_X13_Y21_N28
\Div0|auto_generated|divider|divider|StageOut[119]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~76_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((!anyos(10)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~10_combout\,
	datab => anyos(10),
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~76_combout\);

-- Location: LCCOMB_X13_Y21_N6
\Div0|auto_generated|divider|divider|StageOut[118]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~77_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (!anyos(9))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => anyos(9),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~77_combout\);

-- Location: LCCOMB_X11_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[116]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~79_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((!anyos(7)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => anyos(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~79_combout\);

-- Location: LCCOMB_X14_Y20_N22
\Div0|auto_generated|divider|divider|StageOut[114]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~81_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (anyos(5))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(5),
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~81_combout\);

-- Location: LCCOMB_X16_Y14_N28
\Div1|auto_generated|divider|divider|StageOut[83]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[83]~179_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[83]~179_combout\);

-- Location: LCCOMB_X16_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[38]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~198_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~198_combout\);

-- Location: LCCOMB_X13_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[50]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[50]~199_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[50]~199_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk_principal~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_principal,
	o => \clk_principal~input_o\);

-- Location: CLKCTRL_G4
\Cont_Map|salida~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Cont_Map|salida~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Cont_Map|salida~clkctrl_outclk\);

-- Location: CLKCTRL_G1
\Cont_Map|salida_veloz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Cont_Map|salida_veloz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Cont_Map|salida_veloz~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk_principal~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_principal~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_principal~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N12
\Cont_Map|salida~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|salida~feeder_combout\ = \Cont_Map|salida~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cont_Map|salida~0_combout\,
	combout => \Cont_Map|salida~feeder_combout\);

-- Location: LCCOMB_X1_Y11_N28
\Cont_Map|salida_veloz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont_Map|salida_veloz~feeder_combout\ = \Cont_Map|salida_veloz~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cont_Map|salida_veloz~1_combout\,
	combout => \Cont_Map|salida_veloz~feeder_combout\);

-- Location: IOOBUF_X34_Y10_N9
\bisiesto_led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_MuestraAnyo~24_combout\,
	devoe => ww_devoe,
	o => \bisiesto_led~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\selector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \selector[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\selector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \selector[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\selector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \selector[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\selector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~10_combout\,
	devoe => ww_devoe,
	o => \selector[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\segmentos[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~9_combout\,
	devoe => ww_devoe,
	o => \segmentos[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segmentos[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \segmentos[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segmentos[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \segmentos[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\segmentos[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \segmentos[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\segmentos[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~20_combout\,
	devoe => ww_devoe,
	o => \segmentos[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segmentos[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => \segmentos[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segmentos[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \segmentos[6]~output_o\);

-- Location: LCCOMB_X14_Y16_N4
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (anyos(1) & ((\Add1~1\) # (GND))) # (!anyos(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((anyos(1)) # (!\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X14_Y16_N28
\anyos[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos[1]~9_combout\ = !\Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	combout => \anyos[1]~9_combout\);

-- Location: IOIBUF_X34_Y12_N22
\reset_btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_btn,
	o => \reset_btn~input_o\);

-- Location: CLKCTRL_G8
\reset_btn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_btn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_btn~inputclkctrl_outclk\);

-- Location: FF_X14_Y16_N29
\anyos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos[1]~9_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(1));

-- Location: LCCOMB_X14_Y16_N6
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (anyos(2) & (!\Add1~3\ & VCC)) # (!anyos(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((!anyos(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X14_Y16_N8
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (anyos(3) & ((\Add1~5\) # (GND))) # (!anyos(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((anyos(3)) # (!\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X13_Y16_N8
\anyos~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~6_combout\ = \Add1~6_combout\ $ ((((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add1~6_combout\,
	datad => \Equal0~0_combout\,
	combout => \anyos~6_combout\);

-- Location: FF_X13_Y16_N9
\anyos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~6_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(3));

-- Location: LCCOMB_X13_Y16_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (anyos(2) & (!anyos(1) & (anyos(3) & !anyos(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(2),
	datab => anyos(1),
	datac => anyos(3),
	datad => anyos(0),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X14_Y16_N10
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (anyos(4) & (!\Add1~7\ & VCC)) # (!anyos(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((!anyos(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X13_Y16_N6
\anyos~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~5_combout\ = \Add1~8_combout\ $ ((((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add1~8_combout\,
	datad => \Equal0~0_combout\,
	combout => \anyos~5_combout\);

-- Location: FF_X13_Y16_N7
\anyos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~5_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(4));

-- Location: LCCOMB_X14_Y16_N12
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (anyos(5) & (!\Add1~9\)) # (!anyos(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!anyos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X14_Y16_N13
\anyos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(5));

-- Location: LCCOMB_X14_Y16_N14
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (anyos(6) & (\Add1~11\ $ (GND))) # (!anyos(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((anyos(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X14_Y16_N15
\anyos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(6));

-- Location: LCCOMB_X14_Y16_N16
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (anyos(7) & ((\Add1~13\) # (GND))) # (!anyos(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((anyos(7)) # (!\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X13_Y16_N18
\anyos~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~4_combout\ = \Add1~14_combout\ $ ((((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add1~14_combout\,
	combout => \anyos~4_combout\);

-- Location: FF_X13_Y16_N19
\anyos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~4_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(7));

-- Location: LCCOMB_X13_Y16_N20
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (anyos(4) & (!anyos(5) & (!anyos(6) & anyos(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(4),
	datab => anyos(5),
	datac => anyos(6),
	datad => anyos(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X14_Y16_N18
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (anyos(8) & (!\Add1~15\ & VCC)) # (!anyos(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((!anyos(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X14_Y16_N0
\anyos~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~3_combout\ = \Add1~16_combout\ $ ((((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add1~16_combout\,
	datad => \Equal0~2_combout\,
	combout => \anyos~3_combout\);

-- Location: FF_X14_Y16_N1
\anyos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~3_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(8));

-- Location: LCCOMB_X14_Y16_N20
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (anyos(9) & ((\Add1~17\) # (GND))) # (!anyos(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((anyos(9)) # (!\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X13_Y16_N28
\anyos~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~2_combout\ = \Add1~18_combout\ $ ((((!\Equal0~0_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add1~18_combout\,
	datad => \Equal0~0_combout\,
	combout => \anyos~2_combout\);

-- Location: FF_X13_Y16_N29
\anyos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~2_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(9));

-- Location: LCCOMB_X14_Y16_N22
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (anyos(10) & (!\Add1~19\ & VCC)) # (!anyos(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((!anyos(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X14_Y16_N24
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = \Add1~21\ $ (anyos(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => anyos(11),
	cin => \Add1~21\,
	combout => \Add1~22_combout\);

-- Location: LCCOMB_X13_Y16_N10
\anyos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~0_combout\ = (\Add1~22_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~0_combout\)) # (!\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add1~22_combout\,
	combout => \anyos~0_combout\);

-- Location: FF_X13_Y16_N11
\anyos[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~0_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(11));

-- Location: LCCOMB_X13_Y16_N2
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (anyos(10) & (anyos(9) & (anyos(8) & anyos(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(10),
	datab => anyos(9),
	datac => anyos(8),
	datad => anyos(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X13_Y16_N0
\anyos~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~8_combout\ = (\Add1~0_combout\ & (((!\Equal0~1_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \anyos~8_combout\);

-- Location: FF_X14_Y16_N19
\anyos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	asdata => \anyos~8_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(0));

-- Location: LCCOMB_X12_Y16_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = anyos(7) $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(!anyos(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(7),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X12_Y16_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (anyos(8) & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)) # (!anyos(8) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((anyos(8) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(8),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X12_Y16_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (anyos(9) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND))) # (!anyos(9) & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\) # (!anyos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(9),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X12_Y16_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (anyos(10) & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND))) # (!anyos(10) & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((anyos(10)) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(10),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X12_Y16_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (anyos(11) & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!anyos(11) & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((anyos(11) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(11),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X12_Y16_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X12_Y16_N10
\Mod0|auto_generated|divider|divider|StageOut[78]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\);

-- Location: LCCOMB_X11_Y16_N18
\Mod0|auto_generated|divider|divider|StageOut[77]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\);

-- Location: LCCOMB_X11_Y16_N28
\Mod0|auto_generated|divider|divider|StageOut[76]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\ = (!anyos(9) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(9),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\);

-- Location: LCCOMB_X11_Y16_N24
\Mod0|auto_generated|divider|divider|StageOut[75]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\ = (!anyos(8) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(8),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\);

-- Location: LCCOMB_X11_Y16_N16
\Mod0|auto_generated|divider|divider|StageOut[74]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\ = (!anyos(7) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\);

-- Location: LCCOMB_X11_Y16_N20
\Mod0|auto_generated|divider|divider|StageOut[73]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~123_combout\ = (anyos(6) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~123_combout\);

-- Location: LCCOMB_X11_Y16_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[73]~122_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[73]~123_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[73]~122_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[73]~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[73]~122_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[73]~123_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X11_Y16_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[74]~121_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[74]~120_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X11_Y16_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[75]~119_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[75]~118_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X11_Y16_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~117_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[76]~116_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X11_Y16_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[77]~114_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[77]~115_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X11_Y16_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[78]~112_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[78]~113_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X11_Y16_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X12_Y16_N28
\Mod0|auto_generated|divider|divider|StageOut[91]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (anyos(11))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(11),
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\);

-- Location: LCCOMB_X11_Y15_N4
\Mod0|auto_generated|divider|divider|StageOut[104]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[91]~193_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\);

-- Location: LCCOMB_X12_Y15_N20
\Mod0|auto_generated|divider|divider|StageOut[90]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\);

-- Location: LCCOMB_X12_Y16_N0
\Mod0|auto_generated|divider|divider|StageOut[89]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!anyos(9))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(9),
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\);

-- Location: LCCOMB_X12_Y15_N0
\Mod0|auto_generated|divider|divider|StageOut[88]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\);

-- Location: LCCOMB_X12_Y16_N12
\Mod0|auto_generated|divider|divider|StageOut[87]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\);

-- Location: LCCOMB_X11_Y15_N6
\Mod0|auto_generated|divider|divider|StageOut[86]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\);

-- Location: LCCOMB_X12_Y16_N6
\Mod0|auto_generated|divider|divider|StageOut[72]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~132_combout\ = (anyos(5) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~132_combout\);

-- Location: LCCOMB_X13_Y16_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[72]~133_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[72]~132_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[72]~133_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[72]~132_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X13_Y16_N24
\Mod0|auto_generated|divider|divider|StageOut[85]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\);

-- Location: LCCOMB_X12_Y15_N4
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[85]~131_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[85]~131_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[85]~131_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[85]~134_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X12_Y15_N6
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[86]~129_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[86]~130_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X12_Y15_N8
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[87]~128_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X12_Y15_N10
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[88]~127_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X12_Y15_N14
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X12_Y15_N18
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X13_Y15_N28
\Mod0|auto_generated|divider|divider|StageOut[103]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~136_combout\);

-- Location: LCCOMB_X12_Y15_N28
\Mod0|auto_generated|divider|divider|StageOut[102]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[89]~195_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~175_combout\);

-- Location: LCCOMB_X12_Y16_N30
\Mod0|auto_generated|divider|divider|StageOut[88]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!anyos(8))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(8),
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\);

-- Location: LCCOMB_X12_Y15_N22
\Mod0|auto_generated|divider|divider|StageOut[101]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[88]~196_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\);

-- Location: LCCOMB_X13_Y16_N4
\Mod0|auto_generated|divider|divider|StageOut[87]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((!anyos(7)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => anyos(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\);

-- Location: LCCOMB_X13_Y16_N22
\Mod0|auto_generated|divider|divider|StageOut[100]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[87]~197_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\);

-- Location: LCCOMB_X11_Y15_N16
\Mod0|auto_generated|divider|divider|StageOut[99]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((anyos(6)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => anyos(6),
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\);

-- Location: LCCOMB_X13_Y15_N2
\Mod0|auto_generated|divider|divider|StageOut[98]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\);

-- Location: LCCOMB_X11_Y15_N24
\Mod0|auto_generated|divider|divider|StageOut[97]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & !anyos(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => anyos(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\);

-- Location: LCCOMB_X13_Y15_N10
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[97]~145_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[97]~142_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X13_Y15_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[98]~199_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[98]~141_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X13_Y15_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\);

-- Location: LCCOMB_X13_Y15_N16
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X13_Y15_N18
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[101]~138_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X13_Y15_N24
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[104]~135_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[104]~173_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\);

-- Location: LCCOMB_X13_Y15_N26
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ = \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\);

-- Location: LCCOMB_X13_Y14_N28
\Mod0|auto_generated|divider|divider|StageOut[117]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\);

-- Location: LCCOMB_X14_Y16_N30
\anyos~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~1_combout\ = \Add1~20_combout\ $ ((((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Add1~20_combout\,
	datad => \Equal0~0_combout\,
	combout => \anyos~1_combout\);

-- Location: FF_X14_Y16_N31
\anyos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~1_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(10));

-- Location: LCCOMB_X12_Y16_N14
\Mod0|auto_generated|divider|divider|StageOut[90]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((!anyos(10)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => anyos(10),
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\);

-- Location: LCCOMB_X12_Y15_N2
\Mod0|auto_generated|divider|divider|StageOut[103]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[90]~194_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\);

-- Location: LCCOMB_X13_Y15_N0
\Mod0|auto_generated|divider|divider|StageOut[116]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[103]~174_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\);

-- Location: LCCOMB_X13_Y14_N16
\Mod0|auto_generated|divider|divider|StageOut[115]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\);

-- Location: LCCOMB_X12_Y15_N30
\Mod0|auto_generated|divider|divider|StageOut[114]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[101]~176_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\);

-- Location: LCCOMB_X13_Y15_N8
\Mod0|auto_generated|divider|divider|StageOut[113]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[100]~177_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\);

-- Location: LCCOMB_X13_Y14_N22
\Mod0|auto_generated|divider|divider|StageOut[112]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~151_combout\);

-- Location: LCCOMB_X13_Y14_N12
\Mod0|auto_generated|divider|divider|StageOut[111]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\);

-- Location: LCCOMB_X11_Y15_N8
\Mod0|auto_generated|divider|divider|StageOut[84]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !anyos(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => anyos(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\);

-- Location: LCCOMB_X11_Y15_N22
\Mod0|auto_generated|divider|divider|StageOut[84]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !anyos(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => anyos(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\);

-- Location: LCCOMB_X11_Y15_N0
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[84]~144_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[84]~143_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\);

-- Location: LCCOMB_X11_Y15_N18
\Mod0|auto_generated|divider|divider|StageOut[110]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((!anyos(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => anyos(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\);

-- Location: LCCOMB_X14_Y15_N2
\Mod0|auto_generated|divider|divider|StageOut[96]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\ = (!anyos(3) & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\);

-- Location: LCCOMB_X14_Y15_N0
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[96]~155_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[96]~156_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\);

-- Location: LCCOMB_X13_Y14_N8
\Mod0|auto_generated|divider|divider|StageOut[109]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\);

-- Location: LCCOMB_X12_Y14_N8
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[109]~154_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[109]~157_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X12_Y14_N10
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[110]~153_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X12_Y14_N12
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[111]~184_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~152_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X12_Y14_N18
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[114]~149_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\);

-- Location: LCCOMB_X12_Y14_N20
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[115]~180_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[115]~148_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\);

-- Location: LCCOMB_X12_Y14_N22
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[116]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\);

-- Location: LCCOMB_X12_Y14_N24
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[117]~146_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\);

-- Location: LCCOMB_X12_Y14_N26
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\);

-- Location: LCCOMB_X13_Y14_N4
\Mod0|auto_generated|divider|divider|StageOut[130]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[117]~178_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\);

-- Location: LCCOMB_X13_Y14_N14
\Mod0|auto_generated|divider|divider|StageOut[129]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[116]~179_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\);

-- Location: LCCOMB_X12_Y14_N30
\Mod0|auto_generated|divider|divider|StageOut[128]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\);

-- Location: LCCOMB_X12_Y14_N28
\Mod0|auto_generated|divider|divider|StageOut[127]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[114]~181_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~185_combout\);

-- Location: LCCOMB_X13_Y14_N26
\Mod0|auto_generated|divider|divider|StageOut[126]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[113]~182_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\);

-- Location: LCCOMB_X11_Y15_N28
\Mod0|auto_generated|divider|divider|StageOut[112]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[99]~198_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\);

-- Location: LCCOMB_X13_Y14_N0
\Mod0|auto_generated|divider|divider|StageOut[125]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~183_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\);

-- Location: LCCOMB_X11_Y13_N18
\Mod0|auto_generated|divider|divider|StageOut[124]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~161_combout\);

-- Location: LCCOMB_X11_Y13_N4
\Mod0|auto_generated|divider|divider|StageOut[123]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~162_combout\);

-- Location: LCCOMB_X11_Y13_N6
\Mod0|auto_generated|divider|divider|StageOut[122]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\);

-- Location: LCCOMB_X14_Y16_N26
\anyos~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \anyos~7_combout\ = \Add1~4_combout\ $ ((((!\Equal0~2_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add1~4_combout\,
	combout => \anyos~7_combout\);

-- Location: FF_X14_Y16_N27
\anyos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida~clkctrl_outclk\,
	d => \anyos~7_combout\,
	clrn => \reset_btn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => anyos(2));

-- Location: LCCOMB_X11_Y13_N24
\Mod0|auto_generated|divider|divider|StageOut[121]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\ = (!anyos(2) & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\);

-- Location: LCCOMB_X12_Y13_N0
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[121]~164_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\);

-- Location: LCCOMB_X12_Y13_N2
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X12_Y13_N14
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[128]~190_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\);

-- Location: LCCOMB_X12_Y13_N16
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[129]~169_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~191_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\);

-- Location: LCCOMB_X12_Y13_N18
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[130]~170_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[130]~192_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\);

-- Location: LCCOMB_X12_Y13_N20
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ = \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\);

-- Location: LCCOMB_X18_Y17_N6
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\ = anyos(7) $ (GND)
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\ = CARRY(!anyos(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(7),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~1\);

-- Location: LCCOMB_X18_Y17_N10
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\ = (anyos(9) & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\ $ (GND))) # (!anyos(9) & ((GND) # (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\)))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\) # (!anyos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(9),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[5]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~5\);

-- Location: LCCOMB_X18_Y17_N14
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\ = (anyos(11) & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ $ (GND))) # (!anyos(11) & (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\ = CARRY((anyos(11) & !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(11),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\);

-- Location: LCCOMB_X18_Y17_N16
\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\);

-- Location: LCCOMB_X18_Y15_N2
\Mod1|auto_generated|divider|divider|StageOut[117]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((anyos(11)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[8]~8_combout\,
	datac => anyos(11),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\);

-- Location: LCCOMB_X18_Y15_N8
\Mod1|auto_generated|divider|divider|StageOut[104]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ = (anyos(11) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(11),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\);

-- Location: LCCOMB_X18_Y15_N24
\Mod1|auto_generated|divider|divider|StageOut[103]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\ = (!anyos(10) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(10),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\);

-- Location: LCCOMB_X18_Y17_N22
\Mod1|auto_generated|divider|divider|StageOut[102]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[102]~87_combout\);

-- Location: LCCOMB_X16_Y15_N24
\Mod1|auto_generated|divider|divider|StageOut[101]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\ = (!anyos(8) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(8),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\);

-- Location: LCCOMB_X18_Y17_N0
\Mod1|auto_generated|divider|divider|StageOut[100]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[4]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\);

-- Location: LCCOMB_X18_Y15_N4
\Mod1|auto_generated|divider|divider|StageOut[99]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\ = (anyos(6) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[99]~92_combout\);

-- Location: LCCOMB_X18_Y15_N12
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[100]~90_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[100]~91_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\);

-- Location: LCCOMB_X18_Y15_N14
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[101]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[101]~88_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~5\);

-- Location: LCCOMB_X18_Y15_N18
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ & (((\Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[103]~85_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[103]~84_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[7]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\);

-- Location: LCCOMB_X18_Y15_N20
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[104]~83_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[104]~82_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\);

-- Location: LCCOMB_X18_Y15_N22
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\);

-- Location: LCCOMB_X18_Y15_N0
\Mod1|auto_generated|divider|divider|StageOut[130]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\);

-- Location: LCCOMB_X16_Y16_N0
\Mod1|auto_generated|divider|divider|StageOut[98]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\ = (anyos(5) & \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\);

-- Location: LCCOMB_X16_Y16_N20
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[98]~103_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[98]~102_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\);

-- Location: LCCOMB_X18_Y15_N26
\Mod1|auto_generated|divider|divider|StageOut[117]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\);

-- Location: LCCOMB_X19_Y16_N24
\Mod1|auto_generated|divider|divider|StageOut[116]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[116]~95_combout\);

-- Location: LCCOMB_X18_Y17_N24
\Mod1|auto_generated|divider|divider|StageOut[115]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((!anyos(9)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[6]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => anyos(9),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\);

-- Location: LCCOMB_X17_Y15_N22
\Mod1|auto_generated|divider|divider|StageOut[114]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[6]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\);

-- Location: LCCOMB_X18_Y16_N0
\Mod1|auto_generated|divider|divider|StageOut[113]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[5]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\);

-- Location: LCCOMB_X19_Y16_N12
\Mod1|auto_generated|divider|divider|StageOut[112]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\);

-- Location: LCCOMB_X16_Y16_N2
\Mod1|auto_generated|divider|divider|StageOut[111]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\ = (anyos(5) & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[111]~104_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[111]~101_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\);

-- Location: LCCOMB_X18_Y16_N14
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[112]~99_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[112]~100_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\);

-- Location: LCCOMB_X18_Y16_N16
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[113]~137_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[113]~98_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\);

-- Location: LCCOMB_X18_Y16_N18
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ & (((!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\)) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\) # (GND)))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[114]~136_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[114]~97_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\);

-- Location: LCCOMB_X18_Y16_N20
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ & (((\Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[115]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[115]~135_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~9\);

-- Location: LCCOMB_X18_Y16_N24
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ & ((((\Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\ & ((\Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[117]~133_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[117]~94_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\);

-- Location: LCCOMB_X18_Y16_N26
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~13\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\);

-- Location: LCCOMB_X16_Y16_N16
\Mod1|auto_generated|divider|divider|StageOut[124]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((anyos(5)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[3]~14_combout\,
	datac => anyos(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\);

-- Location: LCCOMB_X19_Y16_N4
\Mod1|auto_generated|divider|divider|StageOut[125]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((anyos(6)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[4]~0_combout\,
	datab => anyos(6),
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\);

-- Location: LCCOMB_X17_Y16_N2
\MuestraAnyo~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~8_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[130]~132_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\,
	combout => \MuestraAnyo~8_combout\);

-- Location: LCCOMB_X18_Y16_N8
\Mod1|auto_generated|divider|divider|StageOut[125]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[5]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\);

-- Location: LCCOMB_X18_Y16_N10
\MuestraAnyo~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~11_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\) # ((!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\,
	combout => \MuestraAnyo~11_combout\);

-- Location: LCCOMB_X19_Y16_N26
\Mod1|auto_generated|divider|divider|StageOut[124]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[4]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\);

-- Location: LCCOMB_X17_Y16_N24
\MuestraAnyo~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~12_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\ & (\MuestraAnyo~11_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\,
	datac => \MuestraAnyo~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\,
	combout => \MuestraAnyo~12_combout\);

-- Location: LCCOMB_X18_Y16_N28
\Mod1|auto_generated|divider|divider|StageOut[130]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\);

-- Location: LCCOMB_X18_Y14_N8
\Mod1|auto_generated|divider|divider|StageOut[121]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & !anyos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => anyos(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\);

-- Location: LCCOMB_X18_Y16_N2
\Mod1|auto_generated|divider|divider|StageOut[129]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[9]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\);

-- Location: LCCOMB_X17_Y16_N26
\MuestraAnyo~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~10_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\ & 
-- !\Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[130]~116_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[129]~115_combout\,
	combout => \MuestraAnyo~10_combout\);

-- Location: LCCOMB_X18_Y17_N30
\Mod1|auto_generated|divider|divider|StageOut[116]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & ((!anyos(10)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[7]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => anyos(10),
	datad => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\);

-- Location: LCCOMB_X18_Y16_N30
\Mod1|auto_generated|divider|divider|StageOut[129]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[116]~134_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[8]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[129]~131_combout\);

-- Location: LCCOMB_X19_Y16_N2
\Mod1|auto_generated|divider|divider|StageOut[128]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[8]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[128]~105_combout\);

-- Location: LCCOMB_X19_Y16_N0
\Mod1|auto_generated|divider|divider|StageOut[127]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[7]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[127]~106_combout\);

-- Location: LCCOMB_X18_Y16_N6
\Mod1|auto_generated|divider|divider|StageOut[126]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[6]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\);

-- Location: LCCOMB_X16_Y16_N14
\Mod1|auto_generated|divider|divider|StageOut[123]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[3]~16_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\);

-- Location: LCCOMB_X17_Y16_N4
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[123]~140_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[123]~114_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\);

-- Location: LCCOMB_X17_Y16_N6
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[124]~139_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[124]~109_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\);

-- Location: LCCOMB_X17_Y16_N8
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[125]~138_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[125]~108_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\);

-- Location: LCCOMB_X17_Y16_N10
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & (((!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\)) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\) # (GND)))))
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\ = CARRY(((!\Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\)) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[126]~130_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[126]~107_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~7\);

-- Location: LCCOMB_X17_Y16_N20
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\ = \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[11]~15\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\);

-- Location: LCCOMB_X17_Y16_N22
\MuestraAnyo~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~14_combout\ = (\MuestraAnyo~13_combout\ & (\MuestraAnyo~12_combout\ & (\MuestraAnyo~10_combout\ & \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuestraAnyo~13_combout\,
	datab => \MuestraAnyo~12_combout\,
	datac => \MuestraAnyo~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[12]~16_combout\,
	combout => \MuestraAnyo~14_combout\);

-- Location: LCCOMB_X17_Y16_N30
\MuestraAnyo~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~5_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\ 
-- & !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[8]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[5]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[6]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[7]~6_combout\,
	combout => \MuestraAnyo~5_combout\);

-- Location: LCCOMB_X12_Y13_N30
\MuestraAnyo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~18_combout\,
	combout => \MuestraAnyo~0_combout\);

-- Location: LCCOMB_X13_Y13_N8
\MuestraAnyo~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\) # 
-- (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	combout => \MuestraAnyo~2_combout\);

-- Location: LCCOMB_X13_Y13_N26
\MuestraAnyo~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\MuestraAnyo~1_combout\) # ((\MuestraAnyo~0_combout\) # (\MuestraAnyo~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuestraAnyo~1_combout\,
	datab => \MuestraAnyo~0_combout\,
	datac => \MuestraAnyo~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \MuestraAnyo~3_combout\);

-- Location: LCCOMB_X17_Y15_N20
\Mod1|auto_generated|divider|divider|StageOut[96]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & !anyos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => anyos(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\);

-- Location: LCCOMB_X17_Y15_N2
\Mod1|auto_generated|divider|divider|StageOut[96]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\ & !anyos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_8_result_int[9]~10_combout\,
	datac => anyos(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\);

-- Location: LCCOMB_X17_Y15_N0
\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[96]~119_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[96]~118_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\);

-- Location: LCCOMB_X17_Y15_N8
\Mod1|auto_generated|divider|divider|StageOut[122]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & (!anyos(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\);

-- Location: LCCOMB_X17_Y15_N12
\Mod1|auto_generated|divider|divider|StageOut[109]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\ = (!anyos(3) & \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_9_result_int[10]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\);

-- Location: LCCOMB_X17_Y15_N30
\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[109]~120_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[109]~117_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\);

-- Location: LCCOMB_X18_Y14_N18
\Mod1|auto_generated|divider|divider|StageOut[122]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[2]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\);

-- Location: LCCOMB_X18_Y14_N24
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[122]~141_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[122]~121_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Mod1|auto_generated|divider|divider|StageOut[121]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_10_result_int[11]~14_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\);

-- Location: LCCOMB_X18_Y14_N28
\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|StageOut[121]~122_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[121]~125_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\);

-- Location: LCCOMB_X18_Y14_N16
\MuestraAnyo~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~6_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\ & (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[1]~22_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[3]~18_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[4]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_11_result_int[2]~20_combout\,
	combout => \MuestraAnyo~6_combout\);

-- Location: LCCOMB_X17_Y14_N12
\MuestraAnyo~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~7_combout\ = (\MuestraAnyo~3_combout\) # ((\MuestraAnyo~4_combout\ & (\MuestraAnyo~5_combout\ & \MuestraAnyo~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuestraAnyo~4_combout\,
	datab => \MuestraAnyo~5_combout\,
	datac => \MuestraAnyo~3_combout\,
	datad => \MuestraAnyo~6_combout\,
	combout => \MuestraAnyo~7_combout\);

-- Location: LCCOMB_X14_Y14_N26
\MuestraAnyo~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~15_combout\ = (\MuestraAnyo~7_combout\) # ((\MuestraAnyo~9_combout\ & (\MuestraAnyo~8_combout\ & \MuestraAnyo~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuestraAnyo~9_combout\,
	datab => \MuestraAnyo~8_combout\,
	datac => \MuestraAnyo~14_combout\,
	datad => \MuestraAnyo~7_combout\,
	combout => \MuestraAnyo~15_combout\);

-- Location: LCCOMB_X12_Y14_N6
\MuestraAnyo~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~17_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & (!anyos(2))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & 
-- (((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datab => anyos(2),
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~16_combout\,
	combout => \MuestraAnyo~17_combout\);

-- Location: LCCOMB_X12_Y14_N0
\Mod0|auto_generated|divider|divider|StageOut[127]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\);

-- Location: LCCOMB_X12_Y13_N24
\MuestraAnyo~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~18_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\) # ((\MuestraAnyo~17_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~159_combout\,
	datab => \MuestraAnyo~17_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[128]~168_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[127]~158_combout\,
	combout => \MuestraAnyo~18_combout\);

-- Location: LCCOMB_X11_Y13_N0
\Mod0|auto_generated|divider|divider|StageOut[108]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~166_combout\ = (!anyos(2) & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~166_combout\);

-- Location: LCCOMB_X11_Y13_N2
\Mod0|auto_generated|divider|divider|StageOut[108]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~165_combout\ = (!anyos(2) & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~165_combout\);

-- Location: LCCOMB_X11_Y13_N20
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[108]~166_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[108]~165_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[108]~166_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[108]~165_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\);

-- Location: LCCOMB_X11_Y13_N26
\Mod0|auto_generated|divider|divider|StageOut[121]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\);

-- Location: LCCOMB_X11_Y13_N10
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\ = !anyos(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(1),
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\);

-- Location: LCCOMB_X11_Y13_N22
\Mod0|auto_generated|divider|divider|StageOut[120]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[0]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\);

-- Location: LCCOMB_X11_Y13_N30
\MuestraAnyo~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~20_combout\ = (\MuestraAnyo~19_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuestraAnyo~19_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[121]~167_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[120]~172_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[122]~163_combout\,
	combout => \MuestraAnyo~20_combout\);

-- Location: LCCOMB_X11_Y15_N26
\Mod0|auto_generated|divider|divider|StageOut[123]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[110]~200_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\);

-- Location: LCCOMB_X13_Y14_N30
\Mod0|auto_generated|divider|divider|StageOut[122]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & (!anyos(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\);

-- Location: LCCOMB_X12_Y13_N22
\MuestraAnyo~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~21_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[124]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[125]~187_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[123]~189_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[122]~201_combout\,
	combout => \MuestraAnyo~21_combout\);

-- Location: LCCOMB_X13_Y13_N16
\MuestraAnyo~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~22_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\) # ((\MuestraAnyo~18_combout\) # ((\MuestraAnyo~20_combout\) # (\MuestraAnyo~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~186_combout\,
	datab => \MuestraAnyo~18_combout\,
	datac => \MuestraAnyo~20_combout\,
	datad => \MuestraAnyo~21_combout\,
	combout => \MuestraAnyo~22_combout\);

-- Location: LCCOMB_X13_Y13_N22
\MuestraAnyo~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~23_combout\ = (\MuestraAnyo~15_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\MuestraAnyo~16_combout\) # (\MuestraAnyo~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuestraAnyo~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \MuestraAnyo~15_combout\,
	datad => \MuestraAnyo~22_combout\,
	combout => \MuestraAnyo~23_combout\);

-- Location: LCCOMB_X13_Y13_N20
\MuestraAnyo~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuestraAnyo~24_combout\ = (!anyos(0) & (\MuestraAnyo~23_combout\ & anyos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => anyos(0),
	datac => \MuestraAnyo~23_combout\,
	datad => anyos(1),
	combout => \MuestraAnyo~24_combout\);

-- Location: LCCOMB_X11_Y17_N20
\cont_display[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_display[0]~1_combout\ = !cont_display(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_display(0),
	combout => \cont_display[0]~1_combout\);

-- Location: FF_X11_Y17_N21
\cont_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida_veloz~clkctrl_outclk\,
	d => \cont_display[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_display(0));

-- Location: LCCOMB_X11_Y17_N22
\cont_display[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_display[1]~0_combout\ = cont_display(1) $ (cont_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_display(1),
	datad => cont_display(0),
	combout => \cont_display[1]~0_combout\);

-- Location: FF_X11_Y17_N23
\cont_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Cont_Map|salida_veloz~clkctrl_outclk\,
	d => \cont_display[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_display(1));

-- Location: LCCOMB_X12_Y17_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (cont_display(0)) # (cont_display(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_display(0),
	datac => cont_display(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X11_Y17_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (cont_display(1)) # (!cont_display(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_display(1),
	datad => cont_display(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X12_Y17_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (cont_display(0)) # (!cont_display(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_display(0),
	datac => cont_display(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X12_Y17_N24
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (cont_display(0) & cont_display(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_display(0),
	datac => cont_display(1),
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X13_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\ = (anyos(6) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\ & VCC)) # (!anyos(6) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ = CARRY((!anyos(6) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\);

-- Location: LCCOMB_X13_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ = (anyos(7) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ & VCC)) # (!anyos(7) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\ = CARRY((!anyos(7) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => anyos(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\);

-- Location: LCCOMB_X13_Y20_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\ = (anyos(8) & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\) # (GND))) # (!anyos(8) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ = CARRY((anyos(8)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\);

-- Location: LCCOMB_X13_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\ = (anyos(9) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ & VCC)) # (!anyos(9) & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\ = CARRY((!anyos(9) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~9\);

-- Location: LCCOMB_X13_Y20_N26
\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\);

-- Location: LCCOMB_X13_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[108]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & anyos(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => anyos(11),
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~48_combout\);

-- Location: LCCOMB_X12_Y20_N8
\Div0|auto_generated|divider|divider|StageOut[107]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~50_combout\ = (!anyos(10) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~50_combout\);

-- Location: LCCOMB_X13_Y20_N0
\Div0|auto_generated|divider|divider|StageOut[106]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~53_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~53_combout\);

-- Location: LCCOMB_X13_Y20_N10
\Div0|auto_generated|divider|divider|StageOut[105]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~55_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~55_combout\);

-- Location: LCCOMB_X12_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[104]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~57_combout\);

-- Location: LCCOMB_X13_Y20_N8
\Div0|auto_generated|divider|divider|StageOut[103]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~59_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~59_combout\);

-- Location: LCCOMB_X12_Y20_N2
\Div0|auto_generated|divider|divider|StageOut[102]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\ = (anyos(5) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\);

-- Location: LCCOMB_X11_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[101]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~62_combout\ = (!anyos(4) & \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~62_combout\);

-- Location: LCCOMB_X12_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[102]~61_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~60_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[102]~61_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[102]~60_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[102]~61_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[102]~60_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[102]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~3\);

-- Location: LCCOMB_X12_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[104]~56_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[104]~56_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[104]~57_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[104]~56_combout\ & !\Div0|auto_generated|divider|divider|StageOut[104]~57_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~56_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[104]~57_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~7\);

-- Location: LCCOMB_X12_Y20_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[106]~52_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~52_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[106]~53_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~53_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\) # (GND)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[106]~52_combout\ & !\Div0|auto_generated|divider|divider|StageOut[106]~53_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[106]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~53_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\);

-- Location: LCCOMB_X12_Y20_N22
\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & (((\Div0|auto_generated|divider|divider|StageOut[107]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~50_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & ((((\Div0|auto_generated|divider|divider|StageOut[107]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~50_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\ & ((\Div0|auto_generated|divider|divider|StageOut[107]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[107]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[107]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\);

-- Location: LCCOMB_X12_Y20_N24
\Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[108]~49_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[108]~48_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[108]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~48_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~13\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\);

-- Location: LCCOMB_X12_Y20_N26
\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\);

-- Location: LCCOMB_X14_Y20_N18
\Div0|auto_generated|divider|divider|StageOut[119]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~64_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~64_combout\);

-- Location: LCCOMB_X14_Y20_N24
\Div0|auto_generated|divider|divider|StageOut[118]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~65_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~65_combout\);

-- Location: LCCOMB_X13_Y21_N16
\Div0|auto_generated|divider|divider|StageOut[117]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~78_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (!anyos(8))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => anyos(8),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~78_combout\);

-- Location: LCCOMB_X13_Y20_N4
\Div0|auto_generated|divider|divider|StageOut[116]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[116]~67_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[116]~67_combout\);

-- Location: LCCOMB_X14_Y20_N20
\Div0|auto_generated|divider|divider|StageOut[115]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[115]~80_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & ((anyos(6)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~2_combout\,
	datab => anyos(6),
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[115]~80_combout\);

-- Location: LCCOMB_X13_Y20_N6
\Div0|auto_generated|divider|divider|StageOut[114]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~69_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~69_combout\);

-- Location: LCCOMB_X14_Y20_N28
\Div0|auto_generated|divider|divider|StageOut[113]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~70_combout\ = (!anyos(4) & \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => anyos(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~70_combout\);

-- Location: LCCOMB_X11_Y20_N26
\Div0|auto_generated|divider|divider|StageOut[112]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & !anyos(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => anyos(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~72_combout\);

-- Location: LCCOMB_X14_Y20_N0
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[112]~75_combout\) # (\Div0|auto_generated|divider|divider|StageOut[112]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[112]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[112]~72_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1_cout\);

-- Location: LCCOMB_X14_Y20_N2
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[113]~71_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[113]~70_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[113]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[113]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3_cout\);

-- Location: LCCOMB_X14_Y20_N4
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[114]~81_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[114]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[114]~81_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[114]~69_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5_cout\);

-- Location: LCCOMB_X14_Y20_N6
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[115]~68_combout\ & !\Div0|auto_generated|divider|divider|StageOut[115]~80_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[115]~68_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[115]~80_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7_cout\);

-- Location: LCCOMB_X14_Y20_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[116]~79_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[116]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[116]~79_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[116]~67_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9_cout\);

-- Location: LCCOMB_X14_Y20_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[117]~66_combout\ & !\Div0|auto_generated|divider|divider|StageOut[117]~78_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[117]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[117]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11_cout\);

-- Location: LCCOMB_X14_Y20_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[118]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[118]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[118]~65_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13_cout\);

-- Location: LCCOMB_X14_Y20_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[119]~76_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[119]~64_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[119]~76_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~13_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\);

-- Location: LCCOMB_X14_Y20_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\);

-- Location: LCCOMB_X13_Y17_N12
\Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = (!cont_display(0) & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (!cont_display(1) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datac => cont_display(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Mux10~10_combout\);

-- Location: LCCOMB_X16_Y15_N20
\Mult0|mult_core|romout[0][6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~1_combout\ = \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mult0|mult_core|romout[0][6]~1_combout\);

-- Location: LCCOMB_X16_Y15_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (anyos(3) & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ $ (VCC))) # (!anyos(3) & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\) # (GND)))
-- \Add2~1\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\) # (!anyos(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(3),
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X16_Y15_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((anyos(4) & (!\Add2~1\)) # (!anyos(4) & (\Add2~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((anyos(4) & 
-- ((\Add2~1\) # (GND))) # (!anyos(4) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (anyos(4) & !\Add2~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & ((anyos(4)) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datab => anyos(4),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X16_Y15_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((anyos(5) $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ $ (!\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((anyos(5) & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\) # (!\Add2~3\))) # (!anyos(5) & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => anyos(5),
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X16_Y15_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((\Mult0|mult_core|romout[0][9]~0_combout\ $ (anyos(7) $ (!\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((\Mult0|mult_core|romout[0][9]~0_combout\ & (!anyos(7) & !\Add2~7\)) # (!\Mult0|mult_core|romout[0][9]~0_combout\ & ((!\Add2~7\) # (!anyos(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~0_combout\,
	datab => anyos(7),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X16_Y15_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Mult0|mult_core|romout[0][9]~0_combout\ & ((anyos(8) & ((\Add2~9\) # (GND))) # (!anyos(8) & (!\Add2~9\)))) # (!\Mult0|mult_core|romout[0][9]~0_combout\ & ((anyos(8) & (!\Add2~9\)) # (!anyos(8) & (\Add2~9\ & VCC))))
-- \Add2~11\ = CARRY((\Mult0|mult_core|romout[0][9]~0_combout\ & ((anyos(8)) # (!\Add2~9\))) # (!\Mult0|mult_core|romout[0][9]~0_combout\ & (anyos(8) & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~0_combout\,
	datab => anyos(8),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X16_Y15_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Mult0|mult_core|romout[0][9]~0_combout\ $ (anyos(9) $ (!\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((\Mult0|mult_core|romout[0][9]~0_combout\ & (!anyos(9) & !\Add2~11\)) # (!\Mult0|mult_core|romout[0][9]~0_combout\ & ((!\Add2~11\) # (!anyos(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][9]~0_combout\,
	datab => anyos(9),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X16_Y15_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Mult0|mult_core|_~1_combout\ & ((anyos(10) & ((\Add2~13\) # (GND))) # (!anyos(10) & (!\Add2~13\)))) # (!\Mult0|mult_core|_~1_combout\ & ((anyos(10) & (!\Add2~13\)) # (!anyos(10) & (\Add2~13\ & VCC))))
-- \Add2~15\ = CARRY((\Mult0|mult_core|_~1_combout\ & ((anyos(10)) # (!\Add2~13\))) # (!\Mult0|mult_core|_~1_combout\ & (anyos(10) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|_~1_combout\,
	datab => anyos(10),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X16_Y15_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = ((\Mult0|mult_core|_~0_combout\ $ (anyos(11) $ (!\Add2~15\)))) # (GND)
-- \Add2~17\ = CARRY((\Mult0|mult_core|_~0_combout\ & ((anyos(11)) # (!\Add2~15\))) # (!\Mult0|mult_core|_~0_combout\ & (anyos(11) & !\Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|_~0_combout\,
	datab => anyos(11),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X16_Y15_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X13_Y13_N10
\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (!\Add2~18_combout\ & (!anyos(0) & (anyos(2) & anyos(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => anyos(0),
	datac => anyos(2),
	datad => anyos(1),
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X16_Y12_N8
\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\Add2~2_combout\ & (\Add2~0_combout\ & \Add2~18_combout\)) # (!\Add2~2_combout\ & (!\Add2~0_combout\ & !\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~18_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\);

-- Location: LCCOMB_X16_Y14_N12
\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((\Add2~6_combout\ & (\Add2~18_combout\ & \Add2~4_combout\)) # (!\Add2~6_combout\ & (!\Add2~18_combout\ & !\Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~4_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\);

-- Location: LCCOMB_X16_Y15_N30
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((\Add2~18_combout\ & (\Add2~8_combout\ & \Add2~10_combout\)) # (!\Add2~18_combout\ & (!\Add2~8_combout\ & !\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~10_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\);

-- Location: LCCOMB_X17_Y14_N20
\Div1|auto_generated|divider|my_abs_num|cs2a[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ = \Add2~14_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((!\Add2~12_combout\))) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & 
-- (\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\);

-- Location: LCCOMB_X17_Y12_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\ $ (GND)
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY(!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X17_Y12_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[9]~8_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X17_Y12_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ $ (GND))) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\ & ((GND) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X17_Y12_N22
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND))) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[11]~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X17_Y12_N24
\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\ & (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ $ (GND))) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[11]~5_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X17_Y12_N28
\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X17_Y12_N2
\Div1|auto_generated|divider|divider|StageOut[77]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[77]~177_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~7_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[77]~177_combout\);

-- Location: LCCOMB_X17_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[69]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[69]~89_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[69]~89_combout\);

-- Location: LCCOMB_X17_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[68]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~90_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~90_combout\);

-- Location: LCCOMB_X18_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[67]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[67]~92_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[67]~92_combout\);

-- Location: LCCOMB_X18_Y12_N14
\Div1|auto_generated|divider|divider|StageOut[66]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[66]~93_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[66]~93_combout\);

-- Location: LCCOMB_X16_Y17_N26
\Div1|auto_generated|divider|my_abs_num|cs2a[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\ = \Add2~10_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((!\Add2~8_combout\))) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & (\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~8_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\);

-- Location: LCCOMB_X17_Y12_N8
\Div1|auto_generated|divider|divider|StageOut[65]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[65]~94_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[65]~94_combout\);

-- Location: LCCOMB_X18_Y12_N8
\Div1|auto_generated|divider|divider|StageOut[64]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[64]~96_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add2~18_combout\ $ (\Add2~8_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~8_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[64]~96_combout\);

-- Location: LCCOMB_X18_Y12_N16
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[64]~97_combout\) # (\Div1|auto_generated|divider|divider|StageOut[64]~96_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[64]~97_combout\) # (\Div1|auto_generated|divider|divider|StageOut[64]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[64]~97_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[64]~96_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X18_Y12_N18
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[65]~95_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[65]~94_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[65]~95_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[65]~94_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[65]~95_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[65]~94_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[65]~95_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[65]~94_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X18_Y12_N24
\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[68]~90_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[68]~90_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[68]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[68]~150_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[68]~90_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X18_Y12_N26
\Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\Div1|auto_generated|divider|divider|StageOut[69]~149_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[69]~89_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[69]~89_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[69]~149_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[69]~89_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[69]~149_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[69]~89_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X18_Y12_N28
\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[70]~88_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[70]~88_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\);

-- Location: LCCOMB_X18_Y12_N30
\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X18_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[76]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[76]~154_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[66]~151_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[66]~151_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[76]~154_combout\);

-- Location: LCCOMB_X17_Y12_N30
\Div1|auto_generated|divider|divider|StageOut[75]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[75]~178_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~9_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[75]~178_combout\);

-- Location: LCCOMB_X18_Y13_N28
\Div1|auto_generated|divider|divider|StageOut[74]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[74]~104_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[74]~104_combout\);

-- Location: LCCOMB_X16_Y14_N24
\Div1|auto_generated|divider|my_abs_num|cs2a[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\ = \Add2~6_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((!\Add2~4_combout\))) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & (\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~4_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\);

-- Location: LCCOMB_X16_Y14_N6
\Div1|auto_generated|divider|divider|StageOut[73]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[73]~105_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[73]~105_combout\);

-- Location: LCCOMB_X18_Y13_N6
\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[73]~108_combout\) # (\Div1|auto_generated|divider|divider|StageOut[73]~105_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[73]~108_combout\) # (\Div1|auto_generated|divider|divider|StageOut[73]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[73]~108_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[73]~105_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\);

-- Location: LCCOMB_X18_Y13_N8
\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[74]~103_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[74]~104_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[74]~103_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[74]~104_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[74]~103_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[74]~104_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[74]~103_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[74]~104_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~3\);

-- Location: LCCOMB_X18_Y13_N12
\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[76]~101_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[76]~101_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[76]~154_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[76]~154_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[76]~101_combout\ & !\Div1|auto_generated|divider|divider|StageOut[76]~154_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[76]~101_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[76]~154_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\);

-- Location: LCCOMB_X18_Y13_N14
\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & (((\Div1|auto_generated|divider|divider|StageOut[77]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[77]~177_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((((\Div1|auto_generated|divider|divider|StageOut[77]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[77]~177_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ & ((\Div1|auto_generated|divider|divider|StageOut[77]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[77]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[77]~100_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[77]~177_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~9\);

-- Location: LCCOMB_X18_Y12_N12
\Div1|auto_generated|divider|divider|StageOut[79]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[79]~98_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[79]~98_combout\);

-- Location: LCCOMB_X18_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[78]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[78]~99_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[78]~99_combout\);

-- Location: LCCOMB_X18_Y13_N18
\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[79]~152_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[79]~98_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[79]~152_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[79]~98_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[7]~11\,
	cout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\);

-- Location: LCCOMB_X18_Y13_N20
\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\);

-- Location: LCCOMB_X18_Y13_N2
\Div1|auto_generated|divider|divider|StageOut[87]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[87]~110_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[87]~110_combout\);

-- Location: LCCOMB_X17_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[86]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[86]~111_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[86]~111_combout\);

-- Location: LCCOMB_X16_Y12_N30
\Div1|auto_generated|divider|divider|StageOut[85]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[85]~158_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[75]~178_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[75]~178_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[85]~158_combout\);

-- Location: LCCOMB_X17_Y13_N28
\Div1|auto_generated|divider|divider|StageOut[84]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[84]~113_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[84]~113_combout\);

-- Location: LCCOMB_X18_Y13_N24
\Div1|auto_generated|divider|divider|StageOut[83]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[83]~114_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[83]~114_combout\);

-- Location: LCCOMB_X16_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[82]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[82]~115_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & (\Add2~4_combout\ $ (\Add2~18_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[82]~115_combout\);

-- Location: LCCOMB_X17_Y13_N10
\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[82]~118_combout\) # (\Div1|auto_generated|divider|divider|StageOut[82]~115_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[82]~118_combout\) # (\Div1|auto_generated|divider|divider|StageOut[82]~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[82]~118_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[82]~115_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\);

-- Location: LCCOMB_X17_Y13_N12
\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[83]~179_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[83]~114_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[83]~179_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[83]~114_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[83]~179_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[83]~114_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[83]~179_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[83]~114_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\);

-- Location: LCCOMB_X17_Y13_N14
\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[84]~159_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[84]~113_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[84]~159_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[84]~113_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[84]~159_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[84]~113_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[84]~159_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[84]~113_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\);

-- Location: LCCOMB_X17_Y13_N16
\Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[85]~112_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[85]~112_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[85]~158_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[85]~158_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[85]~112_combout\ & !\Div1|auto_generated|divider|divider|StageOut[85]~158_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[85]~112_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[85]~158_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~7\);

-- Location: LCCOMB_X17_Y13_N20
\Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ & (((\Div1|auto_generated|divider|divider|StageOut[87]~156_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[87]~110_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\ & (!\Div1|auto_generated|divider|divider|StageOut[87]~156_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[87]~110_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[87]~156_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[87]~110_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[87]~156_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[87]~110_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\);

-- Location: LCCOMB_X17_Y14_N6
\Div1|auto_generated|divider|my_abs_num|cs2a[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((\Add2~14_combout\ & (\Add2~18_combout\ & \Add2~12_combout\)) # (!\Add2~14_combout\ & (!\Add2~18_combout\ & !\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\);

-- Location: LCCOMB_X16_Y11_N18
\Div1|auto_generated|divider|divider|StageOut[68]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[68]~150_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add2~18_combout\ $ (\Add2~16_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[68]~150_combout\);

-- Location: LCCOMB_X17_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[78]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[78]~153_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[68]~150_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[68]~150_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[78]~153_combout\);

-- Location: LCCOMB_X18_Y13_N22
\Div1|auto_generated|divider|divider|StageOut[88]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[88]~155_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[78]~153_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[78]~153_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[88]~155_combout\);

-- Location: LCCOMB_X17_Y13_N22
\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[88]~109_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[88]~155_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[88]~109_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[88]~155_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~11\,
	cout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\);

-- Location: LCCOMB_X17_Y13_N24
\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_10_result_int[8]~13_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\);

-- Location: LCCOMB_X16_Y13_N4
\Div1|auto_generated|divider|divider|StageOut[97]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[97]~119_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[97]~119_combout\);

-- Location: LCCOMB_X17_Y13_N8
\Div1|auto_generated|divider|divider|StageOut[96]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[96]~161_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[86]~157_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[86]~157_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[96]~161_combout\);

-- Location: LCCOMB_X16_Y13_N14
\Div1|auto_generated|divider|divider|StageOut[95]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[95]~121_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[95]~121_combout\);

-- Location: LCCOMB_X16_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[94]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[94]~122_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[94]~122_combout\);

-- Location: LCCOMB_X16_Y13_N2
\Div1|auto_generated|divider|divider|StageOut[93]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[93]~123_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[93]~123_combout\);

-- Location: LCCOMB_X16_Y13_N8
\Div1|auto_generated|divider|divider|StageOut[92]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[92]~124_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[92]~124_combout\);

-- Location: LCCOMB_X16_Y12_N20
\Div1|auto_generated|divider|my_abs_num|cs2a[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\ = \Add2~2_combout\ $ (((\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & (!\Add2~0_combout\)) # (!\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\Add2~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~18_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\);

-- Location: LCCOMB_X16_Y12_N26
\Div1|auto_generated|divider|divider|StageOut[81]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[81]~127_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[81]~127_combout\);

-- Location: LCCOMB_X16_Y12_N16
\Div1|auto_generated|divider|divider|StageOut[81]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[81]~126_combout\ = (\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[81]~126_combout\);

-- Location: LCCOMB_X16_Y12_N28
\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\ = (\Div1|auto_generated|divider|divider|StageOut[81]~127_combout\) # (\Div1|auto_generated|divider|divider|StageOut[81]~126_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[81]~127_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[81]~126_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\);

-- Location: LCCOMB_X16_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[91]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[91]~128_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[91]~128_combout\);

-- Location: LCCOMB_X16_Y13_N18
\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[92]~165_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[92]~124_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[92]~165_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[92]~124_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[92]~165_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[92]~124_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[92]~165_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[92]~124_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\);

-- Location: LCCOMB_X16_Y13_N20
\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[93]~164_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[93]~123_combout\))))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[93]~164_combout\) # 
-- ((\Div1|auto_generated|divider|divider|StageOut[93]~123_combout\) # (GND))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[93]~164_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[93]~123_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[93]~164_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[93]~123_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\);

-- Location: LCCOMB_X16_Y13_N22
\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ = (\Div1|auto_generated|divider|divider|StageOut[94]~163_combout\ & (((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)))) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[94]~163_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[94]~122_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\)) # 
-- (!\Div1|auto_generated|divider|divider|StageOut[94]~122_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\) # (GND)))))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[94]~163_combout\ & !\Div1|auto_generated|divider|divider|StageOut[94]~122_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[94]~163_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[94]~122_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~7\);

-- Location: LCCOMB_X16_Y13_N26
\Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ & (((\Div1|auto_generated|divider|divider|StageOut[96]~120_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[96]~161_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\ & (!\Div1|auto_generated|divider|divider|StageOut[96]~120_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[96]~161_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[96]~120_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[96]~161_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[96]~120_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[96]~161_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\);

-- Location: LCCOMB_X16_Y13_N28
\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[97]~160_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[97]~119_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[97]~160_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[97]~119_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~11\,
	cout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\);

-- Location: LCCOMB_X16_Y13_N30
\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_11_result_int[8]~13_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\);

-- Location: LCCOMB_X14_Y12_N28
\Div1|auto_generated|divider|divider|StageOut[105]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[105]~130_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[105]~130_combout\);

-- Location: LCCOMB_X13_Y12_N4
\Div1|auto_generated|divider|divider|StageOut[104]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[104]~131_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[104]~131_combout\);

-- Location: LCCOMB_X14_Y12_N2
\Div1|auto_generated|divider|divider|StageOut[103]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[103]~132_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[103]~132_combout\);

-- Location: LCCOMB_X16_Y14_N22
\Div1|auto_generated|divider|divider|StageOut[72]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[72]~117_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Add2~4_combout\ $ (\Add2~18_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[72]~117_combout\);

-- Location: LCCOMB_X16_Y14_N16
\Div1|auto_generated|divider|divider|StageOut[72]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[72]~116_combout\ = (\Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (\Add2~4_combout\ $ (\Add2~18_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[72]~116_combout\);

-- Location: LCCOMB_X16_Y14_N18
\Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\ = (\Div1|auto_generated|divider|divider|StageOut[72]~117_combout\) # (\Div1|auto_generated|divider|divider|StageOut[72]~116_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[72]~117_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[72]~116_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\);

-- Location: LCCOMB_X16_Y14_N14
\Div1|auto_generated|divider|divider|StageOut[92]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[92]~165_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[82]~115_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[82]~115_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[92]~165_combout\);

-- Location: LCCOMB_X16_Y13_N6
\Div1|auto_generated|divider|divider|StageOut[102]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[102]~170_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[92]~165_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[92]~165_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[102]~170_combout\);

-- Location: LCCOMB_X16_Y12_N2
\Div1|auto_generated|divider|divider|StageOut[101]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[101]~180_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & 
-- (!\Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[4]~11_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[101]~180_combout\);

-- Location: LCCOMB_X16_Y12_N6
\Div1|auto_generated|divider|divider|StageOut[100]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[100]~135_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\Add2~0_combout\ $ (!\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~18_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[100]~135_combout\);

-- Location: LCCOMB_X14_Y12_N12
\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[101]~134_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[101]~180_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[101]~134_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[101]~180_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[101]~134_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[101]~180_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[101]~134_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[101]~180_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~3\);

-- Location: LCCOMB_X14_Y12_N20
\Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ & (((\Div1|auto_generated|divider|divider|StageOut[105]~167_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[105]~130_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\ & (!\Div1|auto_generated|divider|divider|StageOut[105]~167_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[105]~130_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[105]~167_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[105]~130_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[105]~167_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[105]~130_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~9\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11\);

-- Location: LCCOMB_X14_Y13_N10
\Div1|auto_generated|divider|divider|StageOut[106]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[106]~129_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[106]~129_combout\);

-- Location: LCCOMB_X14_Y12_N22
\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[106]~166_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[106]~129_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[106]~166_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[106]~129_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~11\,
	cout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\);

-- Location: LCCOMB_X14_Y12_N24
\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_12_result_int[8]~13_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\);

-- Location: LCCOMB_X13_Y12_N2
\Div1|auto_generated|divider|divider|StageOut[115]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[115]~139_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[7]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[115]~139_combout\);

-- Location: LCCOMB_X14_Y13_N22
\Div1|auto_generated|divider|divider|StageOut[104]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[104]~168_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[94]~163_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[94]~163_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[104]~168_combout\);

-- Location: LCCOMB_X13_Y12_N30
\Div1|auto_generated|divider|divider|StageOut[114]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[114]~172_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[104]~168_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[104]~168_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[114]~172_combout\);

-- Location: LCCOMB_X14_Y12_N8
\Div1|auto_generated|divider|divider|StageOut[113]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[113]~173_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[103]~169_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[103]~169_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[113]~173_combout\);

-- Location: LCCOMB_X14_Y11_N24
\Div1|auto_generated|divider|divider|StageOut[112]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[112]~174_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[102]~170_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[102]~170_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[112]~174_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Div1|auto_generated|divider|divider|StageOut[111]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[111]~143_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[111]~143_combout\);

-- Location: LCCOMB_X16_Y12_N22
\Div1|auto_generated|divider|divider|StageOut[90]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[90]~137_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & (\Add2~18_combout\ $ (\Add2~0_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[90]~137_combout\);

-- Location: LCCOMB_X16_Y12_N24
\Div1|auto_generated|divider|divider|StageOut[90]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[90]~136_combout\ = (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ & (\Add2~18_combout\ $ (\Add2~0_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Add2~0_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[90]~136_combout\);

-- Location: LCCOMB_X16_Y12_N18
\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\ = (\Div1|auto_generated|divider|divider|StageOut[90]~137_combout\) # (\Div1|auto_generated|divider|divider|StageOut[90]~136_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|StageOut[90]~137_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[90]~136_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\);

-- Location: LCCOMB_X16_Y12_N12
\Div1|auto_generated|divider|divider|StageOut[110]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[110]~176_combout\ = (\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[100]~135_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~16_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[100]~135_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[110]~176_combout\);

-- Location: LCCOMB_X13_Y13_N0
\Div1|auto_generated|divider|my_abs_num|cs2a[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\ = anyos(2) $ (((!\Add2~18_combout\ & ((anyos(0)) # (!anyos(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => anyos(0),
	datac => anyos(2),
	datad => anyos(1),
	combout => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\);

-- Location: LCCOMB_X13_Y13_N2
\Div1|auto_generated|divider|divider|StageOut[99]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[99]~147_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\ & !\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs2a[2]~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[99]~147_combout\);

-- Location: LCCOMB_X13_Y13_N28
\Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~16_combout\ = (\Div1|auto_generated|divider|divider|StageOut[99]~146_combout\) # (\Div1|auto_generated|divider|divider|StageOut[99]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[99]~146_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[99]~147_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~16_combout\);

-- Location: LCCOMB_X13_Y12_N8
\Div1|auto_generated|divider|divider|StageOut[109]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[109]~148_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\ & \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~16_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[109]~148_combout\);

-- Location: LCCOMB_X13_Y12_N14
\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[109]~145_combout\) # (\Div1|auto_generated|divider|divider|StageOut[109]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[109]~145_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[109]~148_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\);

-- Location: LCCOMB_X13_Y12_N16
\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[110]~144_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[110]~176_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[110]~144_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[110]~176_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[2]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\);

-- Location: LCCOMB_X13_Y12_N18
\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[111]~175_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[111]~143_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[111]~175_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[111]~143_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[3]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\);

-- Location: LCCOMB_X13_Y12_N20
\Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\ = CARRY(((!\Div1|auto_generated|divider|divider|StageOut[112]~142_combout\ & !\Div1|auto_generated|divider|divider|StageOut[112]~174_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[112]~142_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[112]~174_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[4]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\);

-- Location: LCCOMB_X13_Y12_N22
\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[113]~141_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[113]~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[113]~141_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[113]~173_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[5]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\);

-- Location: LCCOMB_X13_Y12_N24
\Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[114]~140_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[114]~172_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[114]~140_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[114]~172_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[6]~9_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\);

-- Location: LCCOMB_X13_Y12_N26
\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[115]~171_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[115]~139_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[115]~171_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[115]~139_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[7]~11_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\);

-- Location: LCCOMB_X13_Y12_N28
\Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ = !\Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_13_result_int[8]~13_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\);

-- Location: LCCOMB_X14_Y13_N24
\Div1|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~0_combout\ = \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\ $ (VCC)
-- \Div1|auto_generated|divider|op_1~1\ = CARRY(\Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|op_1~0_combout\,
	cout => \Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X14_Y13_N18
\Div1|auto_generated|divider|quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[0]~0_combout\ = (\Add2~18_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\)) # (!\Add2~18_combout\ & ((\Div1|auto_generated|divider|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_13_result_int[9]~14_combout\,
	datad => \Div1|auto_generated|divider|op_1~0_combout\,
	combout => \Div1|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X14_Y13_N28
\Div1|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & (\Div1|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~3\ & VCC))
-- \Div1|auto_generated|divider|op_1~5\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\ & !\Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~3\,
	combout => \Div1|auto_generated|divider|op_1~4_combout\,
	cout => \Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X14_Y13_N8
\Div1|auto_generated|divider|quotient[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[2]~1_combout\ = (\Add2~18_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))) # (!\Add2~18_combout\ & (\Div1|auto_generated|divider|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|op_1~4_combout\,
	datac => \Add2~18_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Div1|auto_generated|divider|quotient[2]~1_combout\);

-- Location: LCCOMB_X14_Y13_N30
\Div1|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~6_combout\ = \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\ $ (\Div1|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	cin => \Div1|auto_generated|divider|op_1~5\,
	combout => \Div1|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X14_Y13_N16
\Div1|auto_generated|divider|quotient[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[3]~3_combout\ = (\Add2~18_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)) # (!\Add2~18_combout\ & ((\Div1|auto_generated|divider|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|op_1~6_combout\,
	combout => \Div1|auto_generated|divider|quotient[3]~3_combout\);

-- Location: LCCOMB_X13_Y17_N24
\Mult1|mult_core|romout[0][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][9]~5_combout\ = (\Div1|auto_generated|divider|quotient[2]~1_combout\ & (\Div1|auto_generated|divider|quotient[1]~2_combout\ & ((!\Div1|auto_generated|divider|quotient[3]~3_combout\)))) # 
-- (!\Div1|auto_generated|divider|quotient[2]~1_combout\ & (\Div1|auto_generated|divider|quotient[3]~3_combout\ & ((!\Div1|auto_generated|divider|quotient[0]~0_combout\) # (!\Div1|auto_generated|divider|quotient[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \Mult1|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X13_Y17_N22
\Mult1|mult_core|romout[0][8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][8]~6_combout\ = (\Div1|auto_generated|divider|quotient[1]~2_combout\ & (\Div1|auto_generated|divider|quotient[3]~3_combout\ $ (((\Div1|auto_generated|divider|quotient[0]~0_combout\ & 
-- !\Div1|auto_generated|divider|quotient[2]~1_combout\))))) # (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & ((\Div1|auto_generated|divider|quotient[2]~1_combout\ & ((\Div1|auto_generated|divider|quotient[0]~0_combout\) # 
-- (!\Div1|auto_generated|divider|quotient[3]~3_combout\))) # (!\Div1|auto_generated|divider|quotient[2]~1_combout\ & ((\Div1|auto_generated|divider|quotient[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \Mult1|mult_core|romout[0][8]~6_combout\);

-- Location: LCCOMB_X13_Y17_N2
\Mult1|mult_core|romout[0][6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult1|mult_core|romout[0][6]~8_combout\ = \Div1|auto_generated|divider|quotient[1]~2_combout\ $ (((\Div1|auto_generated|divider|quotient[0]~0_combout\ & !\Div1|auto_generated|divider|quotient[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datad => \Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \Mult1|mult_core|romout[0][6]~8_combout\);

-- Location: LCCOMB_X14_Y13_N6
\Div1|auto_generated|divider|quotient[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|quotient[1]~2_combout\ = (\Add2~18_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\))) # (!\Add2~18_combout\ & (\Div1|auto_generated|divider|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|op_1~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_12_result_int[9]~14_combout\,
	datac => \Add2~18_combout\,
	combout => \Div1|auto_generated|divider|quotient[1]~2_combout\);

-- Location: LCCOMB_X16_Y17_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (anyos(2) & (\Div1|auto_generated|divider|quotient[0]~0_combout\ $ (GND))) # (!anyos(2) & ((GND) # (!\Div1|auto_generated|divider|quotient[0]~0_combout\)))
-- \Add3~1\ = CARRY((!\Div1|auto_generated|divider|quotient[0]~0_combout\) # (!anyos(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(2),
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X16_Y17_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add2~0_combout\ & ((\Div1|auto_generated|divider|quotient[1]~2_combout\ & (!\Add3~1\)) # (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & (\Add3~1\ & VCC)))) # (!\Add2~0_combout\ & 
-- ((\Div1|auto_generated|divider|quotient[1]~2_combout\ & ((\Add3~1\) # (GND))) # (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & (!\Add3~1\))))
-- \Add3~3\ = CARRY((\Add2~0_combout\ & (\Div1|auto_generated|divider|quotient[1]~2_combout\ & !\Add3~1\)) # (!\Add2~0_combout\ & ((\Div1|auto_generated|divider|quotient[1]~2_combout\) # (!\Add3~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X16_Y17_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Div1|auto_generated|divider|quotient[2]~1_combout\ $ (\Add2~2_combout\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Div1|auto_generated|divider|quotient[2]~1_combout\ & (\Add2~2_combout\ & !\Add3~3\)) # (!\Div1|auto_generated|divider|quotient[2]~1_combout\ & ((\Add2~2_combout\) # (!\Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X16_Y17_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Mult1|mult_core|romout[0][5]~9_combout\ & ((\Add2~4_combout\ & (!\Add3~5\)) # (!\Add2~4_combout\ & ((\Add3~5\) # (GND))))) # (!\Mult1|mult_core|romout[0][5]~9_combout\ & ((\Add2~4_combout\ & (\Add3~5\ & VCC)) # (!\Add2~4_combout\ & 
-- (!\Add3~5\))))
-- \Add3~7\ = CARRY((\Mult1|mult_core|romout[0][5]~9_combout\ & ((!\Add3~5\) # (!\Add2~4_combout\))) # (!\Mult1|mult_core|romout[0][5]~9_combout\ & (!\Add2~4_combout\ & !\Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][5]~9_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X16_Y17_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mult1|mult_core|romout[0][7]~7_combout\ & ((\Add2~8_combout\ & (!\Add3~9\)) # (!\Add2~8_combout\ & ((\Add3~9\) # (GND))))) # (!\Mult1|mult_core|romout[0][7]~7_combout\ & ((\Add2~8_combout\ & (\Add3~9\ & VCC)) # (!\Add2~8_combout\ & 
-- (!\Add3~9\))))
-- \Add3~11\ = CARRY((\Mult1|mult_core|romout[0][7]~7_combout\ & ((!\Add3~9\) # (!\Add2~8_combout\))) # (!\Mult1|mult_core|romout[0][7]~7_combout\ & (!\Add2~8_combout\ & !\Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|mult_core|romout[0][7]~7_combout\,
	datab => \Add2~8_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X16_Y17_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add2~12_combout\ & ((\Mult1|mult_core|romout[0][9]~5_combout\ & (!\Add3~13\)) # (!\Mult1|mult_core|romout[0][9]~5_combout\ & (\Add3~13\ & VCC)))) # (!\Add2~12_combout\ & ((\Mult1|mult_core|romout[0][9]~5_combout\ & ((\Add3~13\) # 
-- (GND))) # (!\Mult1|mult_core|romout[0][9]~5_combout\ & (!\Add3~13\))))
-- \Add3~15\ = CARRY((\Add2~12_combout\ & (\Mult1|mult_core|romout[0][9]~5_combout\ & !\Add3~13\)) # (!\Add2~12_combout\ & ((\Mult1|mult_core|romout[0][9]~5_combout\) # (!\Add3~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Mult1|mult_core|romout[0][9]~5_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X16_Y17_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add2~16_combout\ & (\Add3~17\ & VCC)) # (!\Add2~16_combout\ & (!\Add3~17\))
-- \Add3~19\ = CARRY((!\Add2~16_combout\ & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~16_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X16_Y17_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Add2~18_combout\ & (\Add3~19\ $ (GND))) # (!\Add2~18_combout\ & ((GND) # (!\Add3~19\)))
-- \Add3~21\ = CARRY((!\Add3~19\) # (!\Add2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X16_Y17_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = \Add2~18_combout\ $ (!\Add3~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	cin => \Add3~23\,
	combout => \Add3~24_combout\);

-- Location: LCCOMB_X11_Y17_N10
\Div2|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~0_combout\ = \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ $ (VCC)
-- \Div2|auto_generated|divider|op_1~1\ = CARRY(\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|op_1~0_combout\,
	cout => \Div2|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X11_Y17_N4
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = anyos(1) $ (((\Add3~24_combout\ & ((\Div2|auto_generated|divider|op_1~0_combout\))) # (!\Add3~24_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => anyos(1),
	datad => \Div2|auto_generated|divider|op_1~0_combout\,
	combout => \Add5~2_combout\);

-- Location: LCCOMB_X16_Y20_N6
\Div2|auto_generated|divider|my_abs_num|cs2a[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ = \Add3~20_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & ((\Add3~18_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & 
-- (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~20_combout\,
	datad => \Add3~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\);

-- Location: LCCOMB_X17_Y20_N12
\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X17_Y20_N16
\Div2|auto_generated|divider|divider|StageOut[21]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[21]~94_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[21]~94_combout\);

-- Location: LCCOMB_X16_Y20_N4
\Div2|auto_generated|divider|my_abs_num|cs2a[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & ((\Add3~24_combout\ & (!\Add3~20_combout\ & !\Add3~18_combout\)) # (!\Add3~24_combout\ & (\Add3~20_combout\ & 
-- \Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~20_combout\,
	datad => \Add3~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\);

-- Location: LCCOMB_X16_Y20_N24
\Div2|auto_generated|divider|divider|StageOut[20]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[20]~171_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Add3~22_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~5_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[20]~171_combout\);

-- Location: LCCOMB_X17_Y20_N0
\Div2|auto_generated|divider|divider|StageOut[19]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[19]~96_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[19]~96_combout\);

-- Location: LCCOMB_X16_Y20_N28
\Div2|auto_generated|divider|divider|StageOut[18]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[18]~98_combout\ = (\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ $ (\Add3~24_combout\ $ (\Add3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Add3~18_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[18]~98_combout\);

-- Location: LCCOMB_X17_Y20_N20
\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[18]~99_combout\) # (\Div2|auto_generated|divider|divider|StageOut[18]~98_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[18]~99_combout\) # (\Div2|auto_generated|divider|divider|StageOut[18]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[18]~99_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[18]~98_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X17_Y20_N22
\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[19]~97_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[19]~96_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[19]~97_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[19]~96_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[19]~97_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[19]~96_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[19]~97_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[19]~96_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X17_Y20_N24
\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[20]~95_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~171_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[20]~95_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~171_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[20]~95_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[20]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[20]~95_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[20]~171_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X17_Y20_N26
\Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[21]~170_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[21]~94_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~170_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[21]~94_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[21]~170_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[21]~94_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[21]~170_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[21]~94_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X17_Y20_N28
\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X11_Y17_N26
\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\Add3~24_combout\ & (!\Add3~2_combout\ & !\Add3~4_combout\)) # (!\Add3~24_combout\ & (\Add3~2_combout\ & \Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~2_combout\,
	datad => \Add3~4_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\);

-- Location: LCCOMB_X12_Y21_N20
\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((\Add3~8_combout\ & (!\Add3~24_combout\ & \Add3~6_combout\)) # (!\Add3~8_combout\ & (\Add3~24_combout\ & !\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\);

-- Location: LCCOMB_X16_Y20_N20
\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((\Add3~12_combout\ & (!\Add3~24_combout\ & \Add3~10_combout\)) # (!\Add3~12_combout\ & (\Add3~24_combout\ & !\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\);

-- Location: LCCOMB_X16_Y19_N24
\Div2|auto_generated|divider|my_abs_num|cs2a[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\ = \Add3~16_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & (\Add3~14_combout\)) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & 
-- ((\Add3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \Add3~14_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\);

-- Location: LCCOMB_X17_Y19_N16
\Div2|auto_generated|divider|divider|StageOut[24]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[24]~105_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[10]~9_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[24]~105_combout\);

-- Location: LCCOMB_X17_Y19_N0
\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[24]~106_combout\) # (\Div2|auto_generated|divider|divider|StageOut[24]~105_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[24]~106_combout\) # (\Div2|auto_generated|divider|divider|StageOut[24]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[24]~106_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[24]~105_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[28]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[28]~100_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[28]~100_combout\);

-- Location: LCCOMB_X17_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[27]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[27]~101_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[27]~101_combout\);

-- Location: LCCOMB_X17_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[26]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~102_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~102_combout\);

-- Location: LCCOMB_X17_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[25]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[25]~104_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[25]~104_combout\);

-- Location: LCCOMB_X17_Y19_N2
\Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[25]~103_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[25]~104_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~103_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[25]~104_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[25]~103_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[25]~104_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~103_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[25]~104_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X17_Y19_N6
\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[27]~173_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[27]~101_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[27]~173_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[27]~101_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[27]~173_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[27]~101_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[27]~173_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[27]~101_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X17_Y19_N8
\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[28]~172_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[28]~100_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[28]~172_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[28]~100_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X17_Y19_N10
\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X16_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[31]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~111_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~111_combout\);

-- Location: LCCOMB_X16_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[30]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~113_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ (\Add3~14_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \Add3~14_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~113_combout\);

-- Location: LCCOMB_X16_Y19_N14
\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[31]~110_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[31]~111_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[31]~110_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[31]~111_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[31]~110_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[31]~111_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[31]~110_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[31]~111_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X16_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[34]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[34]~107_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[34]~107_combout\);

-- Location: LCCOMB_X17_Y20_N14
\Div2|auto_generated|divider|divider|StageOut[26]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[26]~197_combout\ = (\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[12]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[26]~197_combout\);

-- Location: LCCOMB_X17_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[33]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~175_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[26]~197_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[26]~197_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~175_combout\);

-- Location: LCCOMB_X17_Y19_N22
\Div2|auto_generated|divider|divider|StageOut[32]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~176_combout\ = (\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[25]~103_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[25]~103_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~176_combout\);

-- Location: LCCOMB_X16_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[33]~108_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[33]~175_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[33]~108_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[33]~175_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[33]~108_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[33]~175_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[33]~108_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~175_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X16_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[34]~174_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[34]~107_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[34]~174_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[34]~107_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X16_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X14_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[38]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~116_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~116_combout\);

-- Location: LCCOMB_X16_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[37]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~117_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ (\Add3~14_combout\ $ (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \Add3~14_combout\,
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~117_combout\);

-- Location: LCCOMB_X16_Y20_N30
\Div2|auto_generated|divider|my_abs_num|cs2a[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\ = \Add3~12_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((\Add3~10_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & 
-- (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\);

-- Location: LCCOMB_X14_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[36]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~119_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[8]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~119_combout\);

-- Location: LCCOMB_X14_Y19_N12
\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[36]~120_combout\) # (\Div2|auto_generated|divider|divider|StageOut[36]~119_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[36]~120_combout\) # (\Div2|auto_generated|divider|divider|StageOut[36]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[36]~120_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[36]~119_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X14_Y19_N14
\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[37]~118_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[37]~117_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[37]~118_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[37]~117_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[37]~118_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[37]~117_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[37]~118_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[37]~117_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X14_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[38]~198_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[38]~116_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[38]~198_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[38]~116_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[38]~198_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[38]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[38]~198_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[38]~116_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X14_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[40]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[40]~114_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[40]~114_combout\);

-- Location: LCCOMB_X14_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[39]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[39]~178_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[32]~176_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[32]~176_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[39]~178_combout\);

-- Location: LCCOMB_X14_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[39]~115_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[39]~178_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[39]~115_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[39]~178_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[39]~115_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[39]~178_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[39]~115_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[39]~178_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X14_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[40]~177_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[40]~114_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[40]~177_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[40]~114_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X14_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X13_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[45]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[45]~122_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[45]~122_combout\);

-- Location: LCCOMB_X14_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[44]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[44]~181_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[37]~117_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[37]~117_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[44]~181_combout\);

-- Location: LCCOMB_X13_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[43]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[43]~125_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[43]~125_combout\);

-- Location: LCCOMB_X16_Y20_N22
\Div2|auto_generated|divider|divider|StageOut[42]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[42]~127_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Add3~24_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ $ (\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \Add3~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[42]~127_combout\);

-- Location: LCCOMB_X13_Y19_N2
\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[42]~126_combout\) # (\Div2|auto_generated|divider|divider|StageOut[42]~127_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[42]~126_combout\) # (\Div2|auto_generated|divider|divider|StageOut[42]~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[42]~126_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[42]~127_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X13_Y19_N4
\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[43]~124_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[43]~125_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[43]~124_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[43]~125_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[43]~124_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[43]~125_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[43]~124_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[43]~125_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X13_Y19_N8
\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[45]~180_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[45]~122_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[45]~180_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[45]~122_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[45]~180_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[45]~122_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[45]~180_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[45]~122_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X13_Y19_N16
\Div2|auto_generated|divider|divider|StageOut[46]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[46]~121_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[46]~121_combout\);

-- Location: LCCOMB_X13_Y19_N10
\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[46]~179_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[46]~121_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[46]~179_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[46]~121_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X13_Y19_N12
\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X13_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[52]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[52]~128_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[52]~128_combout\);

-- Location: LCCOMB_X13_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[51]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[51]~183_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[44]~181_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[44]~181_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[51]~183_combout\);

-- Location: LCCOMB_X12_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[50]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[50]~130_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[50]~130_combout\);

-- Location: LCCOMB_X12_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[49]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[49]~132_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[49]~132_combout\);

-- Location: LCCOMB_X12_Y21_N26
\Div2|auto_generated|divider|my_abs_num|cs2a[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\ = \Add3~8_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((\Add3~6_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\);

-- Location: LCCOMB_X12_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[48]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[48]~133_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[48]~133_combout\);

-- Location: LCCOMB_X12_Y19_N10
\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[48]~134_combout\) # (\Div2|auto_generated|divider|divider|StageOut[48]~133_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[48]~134_combout\) # (\Div2|auto_generated|divider|divider|StageOut[48]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[48]~134_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[48]~133_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X12_Y19_N12
\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[49]~131_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[49]~132_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[49]~131_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[49]~132_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[49]~131_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[49]~132_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[49]~131_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[49]~132_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X12_Y19_N14
\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[50]~199_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[50]~130_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[50]~199_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[50]~130_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[50]~199_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[50]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[50]~199_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[50]~130_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X12_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[52]~182_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[52]~128_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[52]~182_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[52]~128_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X12_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X12_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[58]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[58]~184_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[51]~183_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[51]~183_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[58]~184_combout\);

-- Location: LCCOMB_X12_Y20_N30
\Div2|auto_generated|divider|divider|StageOut[57]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[57]~136_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[57]~136_combout\);

-- Location: LCCOMB_X12_Y21_N28
\Div2|auto_generated|divider|divider|StageOut[56]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[56]~137_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[56]~137_combout\);

-- Location: LCCOMB_X12_Y21_N24
\Div2|auto_generated|divider|divider|StageOut[55]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[55]~139_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[55]~139_combout\);

-- Location: LCCOMB_X12_Y21_N18
\Div2|auto_generated|divider|divider|StageOut[54]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[54]~140_combout\ = (\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\Add3~24_combout\ $ (\Add3~6_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Add3~6_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[54]~140_combout\);

-- Location: LCCOMB_X12_Y21_N0
\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[54]~141_combout\) # (\Div2|auto_generated|divider|divider|StageOut[54]~140_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[54]~141_combout\) # (\Div2|auto_generated|divider|divider|StageOut[54]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[54]~141_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[54]~140_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X12_Y21_N4
\Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[56]~186_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~137_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[56]~186_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~137_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[56]~186_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[56]~186_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[56]~137_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X12_Y21_N8
\Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[58]~135_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[58]~184_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[58]~135_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[58]~184_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X12_Y21_N10
\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X12_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[63]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[63]~188_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[56]~186_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[56]~186_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[63]~188_combout\);

-- Location: LCCOMB_X12_Y18_N16
\Div2|auto_generated|divider|divider|StageOut[70]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[70]~189_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[63]~188_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[63]~188_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[70]~189_combout\);

-- Location: LCCOMB_X12_Y18_N0
\Div2|auto_generated|divider|divider|StageOut[64]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[64]~142_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[64]~142_combout\);

-- Location: LCCOMB_X12_Y18_N2
\Div2|auto_generated|divider|divider|StageOut[63]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[63]~143_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[63]~143_combout\);

-- Location: LCCOMB_X12_Y21_N16
\Div2|auto_generated|divider|divider|StageOut[62]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[62]~200_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[6]~11_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[62]~200_combout\);

-- Location: LCCOMB_X12_Y18_N18
\Div2|auto_generated|divider|divider|StageOut[61]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[61]~146_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[61]~146_combout\);

-- Location: LCCOMB_X14_Y18_N8
\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (!\Add3~0_combout\ & (anyos(1) & (!anyos(0) & \Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => anyos(1),
	datac => anyos(0),
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X11_Y18_N28
\Div2|auto_generated|divider|my_abs_num|cs2a[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\ = \Add3~4_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\Add3~2_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & (\Add3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Add3~4_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datad => \Add3~2_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\);

-- Location: LCCOMB_X12_Y18_N8
\Div2|auto_generated|divider|divider|StageOut[60]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[60]~147_combout\ = (\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[60]~147_combout\);

-- Location: LCCOMB_X12_Y18_N20
\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[60]~148_combout\) # (\Div2|auto_generated|divider|divider|StageOut[60]~147_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[60]~148_combout\) # (\Div2|auto_generated|divider|divider|StageOut[60]~147_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[60]~148_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[60]~147_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X12_Y18_N22
\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[61]~145_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[61]~146_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[61]~145_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[61]~146_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[61]~145_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[61]~146_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[61]~145_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[61]~146_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X12_Y18_N24
\Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[62]~144_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[62]~200_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[62]~144_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[62]~200_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[62]~144_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[62]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[62]~144_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[62]~200_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X12_Y18_N28
\Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[64]~187_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[64]~142_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[64]~187_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[64]~142_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X12_Y18_N30
\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X11_Y18_N24
\Div2|auto_generated|divider|divider|StageOut[69]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[69]~150_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[69]~150_combout\);

-- Location: LCCOMB_X11_Y18_N2
\Div2|auto_generated|divider|divider|StageOut[68]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[68]~151_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[68]~151_combout\);

-- Location: LCCOMB_X11_Y18_N0
\Div2|auto_generated|divider|divider|StageOut[67]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[67]~152_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[67]~152_combout\);

-- Location: LCCOMB_X11_Y18_N20
\Div2|auto_generated|divider|divider|StageOut[66]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[66]~154_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\Add3~24_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Add3~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[66]~154_combout\);

-- Location: LCCOMB_X11_Y18_N6
\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[66]~155_combout\) # (\Div2|auto_generated|divider|divider|StageOut[66]~154_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[66]~155_combout\) # (\Div2|auto_generated|divider|divider|StageOut[66]~154_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[66]~155_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[66]~154_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X11_Y18_N12
\Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (((\Div2|auto_generated|divider|divider|StageOut[69]~190_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[69]~150_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & (!\Div2|auto_generated|divider|divider|StageOut[69]~190_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[69]~150_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[69]~190_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[69]~150_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[69]~190_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[69]~150_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X11_Y18_N14
\Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[70]~149_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[70]~189_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[70]~149_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[70]~189_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X11_Y18_N16
\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X11_Y18_N4
\Div2|auto_generated|divider|divider|StageOut[76]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[76]~156_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[76]~156_combout\);

-- Location: LCCOMB_X13_Y18_N12
\Div2|auto_generated|divider|divider|StageOut[75]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[75]~157_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[75]~157_combout\);

-- Location: LCCOMB_X13_Y18_N0
\Div2|auto_generated|divider|divider|StageOut[74]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[74]~201_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs2a[4]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[74]~201_combout\);

-- Location: LCCOMB_X13_Y18_N8
\Div2|auto_generated|divider|divider|StageOut[73]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[73]~160_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[73]~160_combout\);

-- Location: LCCOMB_X14_Y18_N4
\Div2|auto_generated|divider|my_abs_num|cs2a[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\ = \Add3~0_combout\ $ (((\Add3~24_combout\ & ((anyos(0)) # (!anyos(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => anyos(1),
	datac => anyos(0),
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\);

-- Location: LCCOMB_X13_Y18_N4
\Div2|auto_generated|divider|divider|StageOut[72]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[72]~162_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs2a[2]~13_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[72]~162_combout\);

-- Location: LCCOMB_X13_Y18_N14
\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[72]~161_combout\) # (\Div2|auto_generated|divider|divider|StageOut[72]~162_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[72]~161_combout\) # (\Div2|auto_generated|divider|divider|StageOut[72]~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[72]~161_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[72]~162_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X13_Y18_N16
\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[73]~159_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[73]~160_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[73]~159_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[73]~160_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[73]~159_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[73]~160_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[73]~159_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[73]~160_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X13_Y18_N22
\Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[76]~192_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[76]~156_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[76]~192_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[76]~156_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	cout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\);

-- Location: LCCOMB_X13_Y18_N24
\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_13_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\);

-- Location: LCCOMB_X11_Y17_N28
\Div2|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[1]~1_combout\ = (\Add3~24_combout\ & (\Div2|auto_generated|divider|op_1~2_combout\)) # (!\Add3~24_combout\ & ((!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|op_1~2_combout\,
	datab => \Add3~24_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|quotient[1]~1_combout\);

-- Location: LCCOMB_X14_Y17_N18
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~7_combout\ & ((cont_display(0) & (\Add5~2_combout\)) # (!cont_display(0) & ((!\Div2|auto_generated|divider|quotient[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~7_combout\,
	datab => \Add5~2_combout\,
	datac => cont_display(0),
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X14_Y13_N0
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (!\Mux2~0_combout\ & ((\Add2~18_combout\ & (\Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\)) # (!\Add2~18_combout\ & ((!\Div1|auto_generated|divider|op_1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_10_result_int[9]~14_combout\,
	datab => \Add2~18_combout\,
	datac => \Div1|auto_generated|divider|op_1~6_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X13_Y17_N16
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & (\Mux10~2_combout\ & (\Div1|auto_generated|divider|quotient[0]~0_combout\ $ (\Div1|auto_generated|divider|quotient[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X11_Y17_N14
\Div2|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & (\Div2|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & 
-- (!\Div2|auto_generated|divider|op_1~3\ & VCC))
-- \Div2|auto_generated|divider|op_1~5\ = CARRY((\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & !\Div2|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|op_1~3\,
	combout => \Div2|auto_generated|divider|op_1~4_combout\,
	cout => \Div2|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X11_Y17_N16
\Div2|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~6_combout\ = \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ $ (\Div2|auto_generated|divider|op_1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	cin => \Div2|auto_generated|divider|op_1~5\,
	combout => \Div2|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X11_Y17_N6
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (!cont_display(0) & ((\Add3~24_combout\ & ((!\Div2|auto_generated|divider|op_1~6_combout\))) # (!\Add3~24_combout\ & (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|op_1~6_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X12_Y18_N4
\Div2|auto_generated|divider|divider|StageOut[68]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[68]~191_combout\ = (\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[61]~145_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[61]~145_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[68]~191_combout\);

-- Location: LCCOMB_X12_Y18_N14
\Div2|auto_generated|divider|divider|StageOut[75]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[75]~193_combout\ = (\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[68]~191_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[68]~191_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[75]~193_combout\);

-- Location: LCCOMB_X13_Y18_N28
\Div2|auto_generated|divider|divider|StageOut[82]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[82]~194_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[75]~193_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[75]~193_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[82]~194_combout\);

-- Location: LCCOMB_X13_Y18_N6
\Div2|auto_generated|divider|divider|StageOut[81]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[81]~195_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[74]~201_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[74]~201_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[81]~195_combout\);

-- Location: LCCOMB_X14_Y18_N24
\Div2|auto_generated|divider|divider|StageOut[80]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[80]~165_combout\ = (\Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[80]~165_combout\);

-- Location: LCCOMB_X14_Y18_N0
\Div2|auto_generated|divider|divider|StageOut[79]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[79]~167_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[79]~167_combout\);

-- Location: LCCOMB_X14_Y18_N28
\Div2|auto_generated|divider|divider|StageOut[78]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[78]~169_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ & (anyos(1) $ (((!\Add3~24_combout\) # (!anyos(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(1),
	datab => \Div2|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datac => anyos(0),
	datad => \Add3~24_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[78]~169_combout\);

-- Location: LCCOMB_X14_Y18_N12
\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[78]~168_combout\) # (\Div2|auto_generated|divider|divider|StageOut[78]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[78]~168_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[78]~169_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1_cout\);

-- Location: LCCOMB_X14_Y18_N14
\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[79]~166_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[79]~167_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[79]~166_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[79]~167_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3_cout\);

-- Location: LCCOMB_X14_Y18_N16
\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[80]~196_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[80]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[80]~196_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[80]~165_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5_cout\);

-- Location: LCCOMB_X14_Y18_N18
\Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[81]~164_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[81]~195_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[81]~164_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[81]~195_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y18_N20
\Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[82]~163_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[82]~194_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[82]~163_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[82]~194_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[4]~7_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\);

-- Location: LCCOMB_X14_Y18_N22
\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_14_result_int[5]~9_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\);

-- Location: LCCOMB_X11_Y17_N8
\Div2|auto_generated|divider|quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[0]~0_combout\ = (\Add3~24_combout\ & (\Div2|auto_generated|divider|op_1~0_combout\)) # (!\Add3~24_combout\ & ((!\Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|op_1~0_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_14_result_int[6]~10_combout\,
	combout => \Div2|auto_generated|divider|quotient[0]~0_combout\);

-- Location: LCCOMB_X11_Y17_N30
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Div2|auto_generated|divider|quotient[0]~0_combout\ $ (((\Add3~24_combout\ & ((\Div2|auto_generated|divider|op_1~4_combout\))) # (!\Add3~24_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|op_1~4_combout\,
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X14_Y17_N20
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\Add3~0_combout\ & (((!\Div2|auto_generated|divider|quotient[1]~1_combout\) # (!\Div2|auto_generated|divider|quotient[0]~0_combout\)) # (!anyos(1)))) # (!\Add3~0_combout\ & (!\Div2|auto_generated|divider|quotient[1]~1_combout\ & 
-- ((!\Div2|auto_generated|divider|quotient[0]~0_combout\) # (!anyos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(1),
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Add3~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X14_Y17_N2
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (cont_display(0) & (\Add4~0_combout\ $ (\Add3~2_combout\ $ (\Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Add4~0_combout\,
	datac => \Add3~2_combout\,
	datad => \Add5~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X14_Y17_N16
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (cont_display(1) & ((\Mux10~5_combout\) # (\Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cont_display(1),
	datac => \Mux10~5_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X14_Y17_N24
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux10~10_combout\) # ((\Mux10~3_combout\) # ((\Mux10~8_combout\ & \Mux10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~10_combout\,
	datab => \Mux10~8_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X11_Y17_N18
\Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~11_combout\ = (!cont_display(0) & ((\Add3~24_combout\ & ((\Div2|auto_generated|divider|op_1~4_combout\))) # (!\Add3~24_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|op_1~4_combout\,
	datad => cont_display(0),
	combout => \Mux6~11_combout\);

-- Location: LCCOMB_X12_Y17_N20
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux6~11_combout\ & (cont_display(1) & (\Div2|auto_generated|divider|quotient[0]~0_combout\ $ (\Div2|auto_generated|divider|quotient[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datab => \Mux6~11_combout\,
	datac => cont_display(1),
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X14_Y17_N30
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = \Add3~0_combout\ $ (\Div2|auto_generated|divider|quotient[1]~1_combout\ $ (((!\Div2|auto_generated|divider|quotient[0]~0_combout\) # (!anyos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => anyos(1),
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Add3~0_combout\,
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Add5~1_combout\);

-- Location: LCCOMB_X12_Y17_N30
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux6~10_combout\ & (!\Add5~1_combout\ & (\Add5~2_combout\ $ (!anyos(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Mux6~10_combout\,
	datac => anyos(0),
	datad => \Add5~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X13_Y17_N4
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux6~12_combout\ & (!cont_display(1) & (\Div1|auto_generated|divider|quotient[0]~0_combout\ $ (\Div1|auto_generated|divider|quotient[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~12_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => cont_display(1),
	datad => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X12_Y17_N6
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~1_combout\) # ((\Mux9~0_combout\) # (\Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~1_combout\,
	datac => \Mux9~0_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X12_Y17_N12
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\Add5~2_combout\ & (!anyos(0) & \Add5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datac => anyos(0),
	datad => \Add5~1_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X16_Y15_N28
\Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X13_Y17_N0
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Div1|auto_generated|divider|quotient[1]~2_combout\ & (!\Div1|auto_generated|divider|quotient[2]~1_combout\ & !\Div1|auto_generated|divider|quotient[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X13_Y17_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (cont_display(1) & (((cont_display(0))))) # (!cont_display(1) & ((cont_display(0) & ((\Mux19~0_combout\))) # (!cont_display(0) & (\Mult0|mult_core|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(1),
	datab => \Mult0|mult_core|_~1_combout\,
	datac => cont_display(0),
	datad => \Mux19~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X11_Y17_N24
\Div2|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[2]~2_combout\ = (\Add3~24_combout\ & ((\Div2|auto_generated|divider|op_1~4_combout\))) # (!\Add3~24_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Add3~24_combout\,
	datac => \Div2|auto_generated|divider|op_1~4_combout\,
	combout => \Div2|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X13_Y17_N18
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\Div2|auto_generated|divider|quotient[0]~0_combout\ & (\Div2|auto_generated|divider|quotient[1]~1_combout\ & !\Div2|auto_generated|divider|quotient[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datab => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	datac => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X12_Y17_N2
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\Mux33~0_combout\) # ((!cont_display(1))))) # (!\Mux8~0_combout\ & (((cont_display(1) & \Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \Mux8~0_combout\,
	datac => cont_display(1),
	datad => \Mux26~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X12_Y17_N10
\Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~16_combout\ = (!cont_display(1) & (!cont_display(0) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(1),
	datab => cont_display(0),
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	combout => \Mux6~16_combout\);

-- Location: LCCOMB_X13_Y17_N20
\Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~18_combout\ = (cont_display(0) & (\Div1|auto_generated|divider|quotient[0]~0_combout\ & (!cont_display(1)))) # (!cont_display(0) & (((\Div2|auto_generated|divider|quotient[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => cont_display(1),
	datad => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	combout => \Mux6~18_combout\);

-- Location: LCCOMB_X12_Y17_N4
\Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~19_combout\ = (\Mux6~18_combout\) # ((cont_display(1) & (anyos(0) & cont_display(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(1),
	datab => anyos(0),
	datac => \Mux6~18_combout\,
	datad => cont_display(0),
	combout => \Mux6~19_combout\);

-- Location: LCCOMB_X14_Y13_N2
\Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~12_combout\ = (cont_display(0) & ((\Add2~18_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\))) # (!\Add2~18_combout\ & (\Div1|auto_generated|divider|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Div1|auto_generated|divider|op_1~4_combout\,
	datac => \Add2~18_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_11_result_int[9]~14_combout\,
	combout => \Mux6~12_combout\);

-- Location: LCCOMB_X12_Y17_N28
\Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~13_combout\ = (\Mux6~10_combout\ & (((!\Add5~1_combout\)))) # (!\Mux6~10_combout\ & ((\Mux6~11_combout\) # ((\Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~10_combout\,
	datab => \Mux6~11_combout\,
	datac => \Mux6~12_combout\,
	datad => \Add5~1_combout\,
	combout => \Mux6~13_combout\);

-- Location: LCCOMB_X12_Y17_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux6~14_combout\ & (\Mux6~19_combout\ & \Mux6~13_combout\)) # (!\Mux6~14_combout\ & (\Mux6~19_combout\ $ (\Mux6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~14_combout\,
	datac => \Mux6~19_combout\,
	datad => \Mux6~13_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X12_Y17_N22
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux6~16_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\) # ((\Mux7~0_combout\ & \Mux3~0_combout\)))) # (!\Mux6~16_combout\ & (\Mux7~0_combout\ & ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~16_combout\,
	datab => \Mux7~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X12_Y17_N16
\Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~15_combout\ = (\Mux3~0_combout\ & ((\Mux6~19_combout\) # ((!\Mux6~14_combout\ & \Mux6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~14_combout\,
	datab => \Mux6~13_combout\,
	datac => \Mux6~19_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux6~15_combout\);

-- Location: LCCOMB_X12_Y17_N18
\Mux6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~20_combout\ = (\Mux6~15_combout\) # ((!cont_display(1) & (!cont_display(0) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(1),
	datab => cont_display(0),
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Mux6~15_combout\,
	combout => \Mux6~20_combout\);

-- Location: LCCOMB_X16_Y15_N22
\Mult0|mult_core|romout[0][9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	combout => \Mult0|mult_core|romout[0][9]~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux10~2_combout\ & ((\Div1|auto_generated|divider|quotient[1]~2_combout\ & ((\Div1|auto_generated|divider|quotient[0]~0_combout\) # (!\Div1|auto_generated|divider|quotient[2]~1_combout\))) # 
-- (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & (\Div1|auto_generated|divider|quotient[0]~0_combout\ & !\Div1|auto_generated|divider|quotient[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X13_Y17_N10
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~2_combout\) # ((!cont_display(1) & (\Mult0|mult_core|romout[0][9]~0_combout\ & !cont_display(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(1),
	datab => \Mult0|mult_core|romout[0][9]~0_combout\,
	datac => cont_display(0),
	datad => \Mux5~2_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X14_Y17_N28
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (cont_display(0) & ((\Add5~2_combout\ & (anyos(0) & \Add5~1_combout\)) # (!\Add5~2_combout\ & ((anyos(0)) # (\Add5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Add5~2_combout\,
	datac => anyos(0),
	datad => \Add5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X14_Y17_N26
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (!cont_display(0) & ((\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[0]~0_combout\ & \Div2|auto_generated|divider|quotient[1]~1_combout\)) # 
-- (!\Div2|auto_generated|divider|quotient[2]~2_combout\ & ((\Div2|auto_generated|divider|quotient[0]~0_combout\) # (\Div2|auto_generated|divider|quotient[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => cont_display(0),
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X14_Y17_N10
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~6_combout\) # ((\Mux10~6_combout\ & ((\Mux5~4_combout\) # (\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \Mux5~4_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X13_Y17_N14
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux10~2_combout\ & ((\Div1|auto_generated|divider|quotient[1]~2_combout\ & (\Div1|auto_generated|divider|quotient[0]~0_combout\ & \Div1|auto_generated|divider|quotient[2]~1_combout\)) # 
-- (!\Div1|auto_generated|divider|quotient[1]~2_combout\ & ((!\Div1|auto_generated|divider|quotient[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|quotient[1]~2_combout\,
	datab => \Div1|auto_generated|divider|quotient[0]~0_combout\,
	datac => \Div1|auto_generated|divider|quotient[2]~1_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X14_Y17_N22
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~2_combout\) # ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\ & (!cont_display(1) & !cont_display(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~16_combout\,
	datab => cont_display(1),
	datac => cont_display(0),
	datad => \Mux4~2_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X14_Y17_N4
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (!cont_display(0) & ((\Div2|auto_generated|divider|quotient[2]~2_combout\ & (\Div2|auto_generated|divider|quotient[0]~0_combout\ & \Div2|auto_generated|divider|quotient[1]~1_combout\)) # 
-- (!\Div2|auto_generated|divider|quotient[2]~2_combout\ & ((!\Div2|auto_generated|divider|quotient[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	datab => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	datac => cont_display(0),
	datad => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X14_Y17_N0
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (cont_display(0) & ((\Add5~2_combout\ & ((\Add5~1_combout\))) # (!\Add5~2_combout\ & (anyos(0) & !\Add5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_display(0),
	datab => \Add5~2_combout\,
	datac => anyos(0),
	datad => \Add5~1_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X14_Y17_N14
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~4_combout\) # ((\Mux10~6_combout\ & ((\Mux4~3_combout\) # (\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Mux10~6_combout\,
	datac => \Mux4~3_combout\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~6_combout\);

ww_bisiesto_led <= \bisiesto_led~output_o\;

ww_selector(0) <= \selector[0]~output_o\;

ww_selector(1) <= \selector[1]~output_o\;

ww_selector(2) <= \selector[2]~output_o\;

ww_selector(3) <= \selector[3]~output_o\;

ww_segmentos(0) <= \segmentos[0]~output_o\;

ww_segmentos(1) <= \segmentos[1]~output_o\;

ww_segmentos(2) <= \segmentos[2]~output_o\;

ww_segmentos(3) <= \segmentos[3]~output_o\;

ww_segmentos(4) <= \segmentos[4]~output_o\;

ww_segmentos(5) <= \segmentos[5]~output_o\;

ww_segmentos(6) <= \segmentos[6]~output_o\;
END structure;


