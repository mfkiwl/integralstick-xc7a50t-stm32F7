EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "INTEGRALSTICK Full Host"
Date "2019-11-08"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 "Top Level"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 700  850  800  650 
U 5DF7080A
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "GND" O R 1500 1400 50 
F3 "3V3" O R 1500 1000 50 
F4 "1V8" O R 1500 1200 50 
F5 "2V5" O R 1500 1100 50 
F6 "1V2" O R 1500 1300 50 
$EndSheet
$Sheet
S 700  1750 800  300 
U 5DF8FFFE
F0 "MCU PMODs" 50
F1 "mcu.sch" 50
F2 "3V3" I R 1500 1850 50 
F3 "GND" I R 1500 1950 50 
$EndSheet
$Comp
L special-azonenberg:CONN_INTEGRALSTICK_MCU_HOST J1
U 2 1 5DFABED1
P 3000 6400
AR Path="/5DFABED1" Ref="J1"  Part="2" 
AR Path="/5DF8FFFE/5DFABED1" Ref="J?"  Part="2" 
F 0 "J1" H 3578 6901 50  0000 L CNN
F 1 "CONN_INTEGRALSTICK_MCU_HOST" H 3578 6810 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-060-01-L-D-A" H 3000 6400 50  0001 C CNN
F 3 "" H 3000 6400 50  0001 C CNN
	2    3000 6400
	1    0    0    -1  
$EndComp
$Sheet
S 700  2300 800  1100
U 5DBDC3C0
F0 "Ethernet" 50
F1 "ethernet.sch" 50
F2 "1V8" I R 1500 2550 50 
F3 "1V2" I R 1500 2650 50 
F4 "GND" I R 1500 2750 50 
F5 "3V3" I R 1500 2350 50 
F6 "2V5" I R 1500 2450 50 
F7 "LVDS_CLK_N" I R 1500 3050 50 
F8 "LVDS_CLK_P" I R 1500 2950 50 
F9 "ETH0_LED1_P" I R 1500 3250 50 
F10 "ETH0_LED2_P" I R 1500 3350 50 
$EndSheet
$Comp
L Switch:SW_SPST SW1
U 1 1 5E08C249
P 3050 6900
F 0 "SW1" V 3004 6998 50  0000 L CNN
F 1 "SW_SPST" V 3095 6998 50  0000 L CNN
F 2 "azonenberg_pcb:SWITCH_RAFI_MICON_5" H 3050 6900 50  0001 C CNN
F 3 "" H 3050 6900 50  0001 C CNN
	1    3050 6900
	0    1    1    0   
$EndComp
$Comp
L xilinx-azonenberg:XILINX_JTAG J15
U 1 1 5E08CB0F
P 1800 6850
F 0 "J15" H 2138 8397 60  0000 C CNN
F 1 "XILINX_JTAG" H 2138 8291 60  0000 C CNN
F 2 "azonenberg_pcb:XILINX_JTAG_PTH_MOLEX_0878311420" H 1800 6850 60  0001 C CNN
F 3 "" H 1800 6850 60  0000 C CNN
	1    1800 6850
	-1   0    0    -1  
$EndComp
Text Label 1800 5750 0    50   ~ 0
3V3
Text Label 1500 2450 0    50   ~ 0
2V5
Text Label 1500 2350 0    50   ~ 0
3V3
Text Label 1500 1850 0    50   ~ 0
3V3
Text Label 1500 1950 0    50   ~ 0
GND
Text Label 1500 2750 0    50   ~ 0
GND
Text Label 1500 2550 0    50   ~ 0
1V8
Text Label 1500 2650 0    50   ~ 0
1V2
Text Label 1800 5850 0    50   ~ 0
GND
Wire Wire Line
	1800 5850 1800 5950
Connection ~ 1800 5950
Wire Wire Line
	1800 5950 1800 6050
Connection ~ 1800 6050
Wire Wire Line
	1800 6050 1800 6150
Connection ~ 1800 6150
Wire Wire Line
	1800 6150 1800 6250
NoConn ~ 1800 6350
Text Label 1800 6450 0    50   ~ 0
JTAG_TMS
NoConn ~ 1800 6850
Text Label 1800 6550 0    50   ~ 0
JTAG_TCK
Text Label 1800 6650 0    50   ~ 0
JTAG_TDO
Text Label 1800 6750 0    50   ~ 0
JTAG_TDI
Text Label 2900 5550 2    50   ~ 0
JTAG_TDI
Text Label 2900 5650 2    50   ~ 0
JTAG_TMS
Text Label 2900 5750 2    50   ~ 0
JTAG_TCK
Text Label 2900 5850 2    50   ~ 0
JTAG_TDO
Text Label 2900 6050 2    50   ~ 0
MCU_RST_N
Text Label 2900 6150 2    50   ~ 0
FPGA_RST_N
Text Label 2900 6250 2    50   ~ 0
FPGA_DONE
Text Label 2900 6350 2    50   ~ 0
MCU_BOOT0
Text Label 3050 7100 2    50   ~ 0
MCU_BOOT0
$Comp
L device:R R49
U 1 1 5E09A8BA
P 3050 7250
F 0 "R49" H 3120 7296 50  0000 L CNN
F 1 "DNP" H 3120 7205 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 2980 7250 50  0001 C CNN
F 3 "" H 3050 7250 50  0001 C CNN
	1    3050 7250
	1    0    0    -1  
$EndComp
Text Label 3050 7500 2    50   ~ 0
GND
Wire Wire Line
	3050 7500 3050 7400
Text Label 3050 6700 2    50   ~ 0
3V3
$Comp
L device:R R50
U 1 1 5E09C4B3
P 3950 6950
F 0 "R50" H 4020 6996 50  0000 L CNN
F 1 "DNP" H 4020 6905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 3880 6950 50  0001 C CNN
F 3 "" H 3950 6950 50  0001 C CNN
	1    3950 6950
	1    0    0    -1  
$EndComp
Text Label 3950 6800 2    50   ~ 0
3V3
Text Label 3950 7100 2    50   ~ 0
FPGA_RST_N
$Comp
L Switch:SW_SPST SW2
U 1 1 5E09CB1A
P 3950 7300
F 0 "SW2" V 3904 7398 50  0000 L CNN
F 1 "SW_SPST" V 3995 7398 50  0000 L CNN
F 2 "azonenberg_pcb:SWITCH_RAFI_MICON_5" H 3950 7300 50  0001 C CNN
F 3 "" H 3950 7300 50  0001 C CNN
	1    3950 7300
	0    1    1    0   
$EndComp
Text Label 3950 7500 2    50   ~ 0
GND
$Comp
L device:R R51
U 1 1 5E09DAE3
P 4850 6950
F 0 "R51" H 4920 6996 50  0000 L CNN
F 1 "DNP" H 4920 6905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 4780 6950 50  0001 C CNN
F 3 "" H 4850 6950 50  0001 C CNN
	1    4850 6950
	1    0    0    -1  
$EndComp
Text Label 4850 6800 2    50   ~ 0
3V3
Text Label 4850 7100 2    50   ~ 0
MCU_RST_N
$Comp
L Switch:SW_SPST SW3
U 1 1 5E09DAEF
P 4850 7300
F 0 "SW3" V 4804 7398 50  0000 L CNN
F 1 "SW_SPST" V 4895 7398 50  0000 L CNN
F 2 "azonenberg_pcb:SWITCH_RAFI_MICON_5" H 4850 7300 50  0001 C CNN
F 3 "" H 4850 7300 50  0001 C CNN
	1    4850 7300
	0    1    1    0   
$EndComp
Text Label 4850 7500 2    50   ~ 0
GND
Text Label 5700 6800 2    50   ~ 0
FPGA_DONE
$Comp
L device:R R52
U 1 1 5E09F499
P 5700 6950
F 0 "R52" H 5770 6996 50  0000 L CNN
F 1 "270" H 5770 6905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5630 6950 50  0001 C CNN
F 3 "" H 5700 6950 50  0001 C CNN
	1    5700 6950
	1    0    0    -1  
$EndComp
$Comp
L device:LED D1
U 1 1 5E09FDEE
P 5700 7250
F 0 "D1" V 5739 7132 50  0000 R CNN
F 1 "GREEN" V 5648 7132 50  0000 R CNN
F 2 "azonenberg_pcb:EIA_0603_LED" H 5700 7250 50  0001 C CNN
F 3 "~" H 5700 7250 50  0001 C CNN
	1    5700 7250
	0    -1   -1   0   
$EndComp
Text Label 5700 7400 2    50   ~ 0
GND
$Comp
L Connector:Conn_Coaxial J16
U 1 1 5E0A909B
P 1400 3700
F 0 "J16" H 1500 3675 50  0000 L CNN
F 1 "SMA" H 1500 3584 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1400 3700 50  0001 C CNN
F 3 "" H 1400 3700 50  0001 C CNN
	1    1400 3700
	1    0    0    -1  
$EndComp
Text Label 1500 2950 0    50   ~ 0
LVDS_CLK_P
Text Label 1500 3050 0    50   ~ 0
LVDS_CLK_N
Text Label 1250 3700 2    50   ~ 0
LVDS_CLK_P
Text Label 1250 3900 2    50   ~ 0
GND
Wire Wire Line
	1250 3900 1400 3900
$Comp
L Connector:Conn_Coaxial J17
U 1 1 5E0AB153
P 1400 4100
F 0 "J17" H 1500 4075 50  0000 L CNN
F 1 "SMA" H 1500 3984 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 1400 4100 50  0001 C CNN
F 3 "" H 1400 4100 50  0001 C CNN
	1    1400 4100
	1    0    0    -1  
$EndComp
Text Label 1250 4100 2    50   ~ 0
LVDS_CLK_N
Text Label 1250 4300 2    50   ~ 0
GND
Wire Wire Line
	1250 4300 1400 4300
$Comp
L Connector:Conn_Coaxial J18
U 1 1 5E0AF267
P 2850 3700
F 0 "J18" H 2950 3675 50  0000 L CNN
F 1 "SMA" H 2950 3584 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 2850 3700 50  0001 C CNN
F 3 "" H 2850 3700 50  0001 C CNN
	1    2850 3700
	1    0    0    -1  
$EndComp
Text Label 4100 4100 2    50   ~ 0
LVDS_DQ0_P
Text Label 2700 3900 2    50   ~ 0
GND
Wire Wire Line
	2700 3900 2850 3900
$Comp
L Connector:Conn_Coaxial J19
U 1 1 5E0AF274
P 2850 4100
F 0 "J19" H 2950 4075 50  0000 L CNN
F 1 "SMA" H 2950 3984 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 2850 4100 50  0001 C CNN
F 3 "" H 2850 4100 50  0001 C CNN
	1    2850 4100
	1    0    0    -1  
$EndComp
Text Label 4100 3700 2    50   ~ 0
LVDS_DQ0_N
Text Label 2700 4300 2    50   ~ 0
GND
Wire Wire Line
	2700 4300 2850 4300
$Comp
L Connector:Conn_Coaxial J20
U 1 1 5E0AFD3C
P 4250 3700
F 0 "J20" H 4350 3675 50  0000 L CNN
F 1 "SMA" H 4350 3584 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4250 3700 50  0001 C CNN
F 3 "" H 4250 3700 50  0001 C CNN
	1    4250 3700
	1    0    0    -1  
$EndComp
Text Label 2700 4100 2    50   ~ 0
LVDS_DQ1_P
Text Label 4100 3900 2    50   ~ 0
GND
Wire Wire Line
	4100 3900 4250 3900
$Comp
L Connector:Conn_Coaxial J21
U 1 1 5E0AFD49
P 4250 4100
F 0 "J21" H 4350 4075 50  0000 L CNN
F 1 "SMA" H 4350 3984 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SMA_EDGE_SAMTEC_SMA_J_P_H_ST_EM1" H 4250 4100 50  0001 C CNN
F 3 "" H 4250 4100 50  0001 C CNN
	1    4250 4100
	1    0    0    -1  
$EndComp
Text Label 2700 3700 2    50   ~ 0
LVDS_DQ1_N
Text Label 4100 4300 2    50   ~ 0
GND
Wire Wire Line
	4100 4300 4250 4300
Text Label 9400 3050 2    50   ~ 0
LVDS_DQ0_P
Text Label 9400 3150 2    50   ~ 0
LVDS_DQ0_N
Text Label 9400 3350 2    50   ~ 0
LVDS_DQ1_P
Text Label 9400 3450 2    50   ~ 0
LVDS_DQ1_N
NoConn ~ 9400 5150
NoConn ~ 9400 5250
Text Label 1500 1000 0    50   ~ 0
3V3
Text Label 1500 1200 0    50   ~ 0
1V8
Text Label 1500 1400 0    50   ~ 0
GND
Text Label 1500 3250 0    50   ~ 0
ETH0_LED1_P
Text Label 1500 3350 0    50   ~ 0
ETH0_LED2_P
Text Label 9400 5750 2    50   ~ 0
ETH0_LED1_P
Text Label 9400 5850 2    50   ~ 0
ETH0_LED2_P
Text Label 1500 1100 0    50   ~ 0
2V5
Text Label 1500 1300 0    50   ~ 0
1V2
Wire Wire Line
	7000 3200 7000 3300
Wire Wire Line
	7000 3400 7000 3500
Text Label 7000 4400 0    50   ~ 0
LVDS_DQ2_P
Text Label 7000 4300 0    50   ~ 0
LVDS_DQ2_N
Text Label 7000 4200 0    50   ~ 0
LVDS_DQ6_P
Text Label 7000 4100 0    50   ~ 0
LVDS_DQ6_N
Text Label 7000 4000 0    50   ~ 0
LVDS_DQ4_P
Text Label 7000 3900 0    50   ~ 0
LVDS_DQ4_N
$Comp
L special-azonenberg:PMOD_HOST J?
U 1 1 5E1F1FA5
P 6800 4450
AR Path="/5DF8FFFE/5E1F1FA5" Ref="J?"  Part="1" 
AR Path="/5E1F1FA5" Ref="J23"  Part="1" 
F 0 "J23" H 6867 5947 60  0000 C CNN
F 1 "PMOD_HOST" H 6867 5841 60  0000 C CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_2x6_RA_PMOD_HOST" H 6800 4450 60  0001 C CNN
F 3 "" H 6800 4450 60  0001 C CNN
	1    6800 4450
	-1   0    0    -1  
$EndComp
Text Label 7000 3800 0    50   ~ 0
LVDS_DQ8_P
Text Label 7000 3700 0    50   ~ 0
LVDS_DQ8_N
$Comp
L special-azonenberg:CONN_INTEGRALSTICK_FPGA_HOST J2
U 3 1 5DBBCD32
P 9600 5900
F 0 "J2" H 9600 5850 50  0000 L CNN
F 1 "CONN_INTEGRALSTICK_FPGA_HOST" H 9600 5750 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SAMTEC_QSH-060-01-L-D-A" H 9600 5900 50  0001 C CNN
F 3 "" H 9600 5900 50  0001 C CNN
	3    9600 5900
	1    0    0    -1  
$EndComp
Text Label 9400 3650 2    50   ~ 0
LVDS_DQ2_P
Text Label 9400 3750 2    50   ~ 0
LVDS_DQ2_N
Text Label 9400 4850 2    50   ~ 0
LVDS_DQ6_P
Text Label 9400 4950 2    50   ~ 0
LVDS_DQ6_N
Text Label 9400 4250 2    50   ~ 0
LVDS_DQ4_P
Text Label 9400 4350 2    50   ~ 0
LVDS_DQ4_N
Text Label 9400 5450 2    50   ~ 0
LVDS_DQ8_P
Text Label 9400 5550 2    50   ~ 0
LVDS_DQ8_N
Text Label 7000 3200 0    50   ~ 0
3V3
Text Label 7000 3400 0    50   ~ 0
GND
NoConn ~ 9400 4650
NoConn ~ 9400 4550
NoConn ~ 9400 4050
NoConn ~ 9400 3950
$EndSCHEMATC
