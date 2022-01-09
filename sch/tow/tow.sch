EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SparkFun-IC-Microcontroller:ATMEGA328P_PDIP U2
U 1 1 6031ECD3
P 5600 3650
F 0 "U2" H 5600 5160 45  0000 C CNN
F 1 "ATMEGA328P_PDIP" H 5600 5076 45  0000 C CNN
F 2 "Silicon-Standard:DIP28" H 5600 5000 20  0001 C CNN
F 3 "" H 5600 3650 50  0001 C CNN
F 4 "IC-09136" H 5600 4981 60  0000 C CNN "Field4"
	1    5600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 60322D33
P 4650 2100
F 0 "R1" V 4445 2100 50  0000 C CNN
F 1 "1k" V 4536 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4690 2090 50  0001 C CNN
F 3 "~" H 4650 2100 50  0001 C CNN
	1    4650 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 2800 4650 2700
Wire Wire Line
	4650 3100 4650 2800
Connection ~ 4650 2800
Wire Wire Line
	4650 4600 4650 4700
$Comp
L SparkFun-Clocks:CRYSTAL-16MHZPTH-HC49US Y1
U 1 1 6032E595
P 3450 3600
F 0 "Y1" V 3545 3502 45  0000 R CNN
F 1 "CRYSTAL-16MHZPTH-HC49US" V 3461 3502 45  0000 R CNN
F 2 "Clocks:HC49US" H 3450 3800 20  0001 C CNN
F 3 "" H 3450 3600 50  0001 C CNN
F 4 "XTAL-08181" V 3366 3502 60  0000 R CNN "Field4"
	1    3450 3600
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Capacitors:22PF-PTH-2.54MM-200V-5% C3
U 1 1 6033CF8C
P 2750 3950
F 0 "C3" V 2410 4000 45  0000 C CNN
F 1 "22pF" V 2494 4000 45  0000 C CNN
F 2 "Capacitors:CAP-PTH-2.54" H 2750 4200 20  0001 C CNN
F 3 "" H 2750 3950 50  0001 C CNN
F 4 "CAP-09128" V 2589 4000 60  0000 C CNN "Field4"
	1    2750 3950
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Capacitors:22PF-PTH-2.54MM-200V-5% C2
U 1 1 6033F4BC
P 2750 3350
F 0 "C2" V 2410 3400 45  0000 C CNN
F 1 "22pF" V 2494 3400 45  0000 C CNN
F 2 "Capacitors:CAP-PTH-2.54" H 2750 3600 20  0001 C CNN
F 3 "" H 2750 3350 50  0001 C CNN
F 4 "CAP-09128" V 2589 3400 60  0000 C CNN "Field4"
	1    2750 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3350 3450 3350
Wire Wire Line
	3450 3350 3450 3500
Wire Wire Line
	2950 3950 3450 3950
Wire Wire Line
	3450 3950 3450 3700
Wire Wire Line
	3450 3350 4650 3350
Wire Wire Line
	4650 3350 4650 3500
Connection ~ 3450 3350
Wire Wire Line
	3450 3950 4650 3950
Wire Wire Line
	4650 3950 4650 3700
Connection ~ 3450 3950
$Comp
L SparkFun-IC-Power:R-78E5.0-1.0 U1
U 1 1 6034FE7E
P 2450 1950
F 0 "U1" H 2450 2310 45  0000 C CNN
F 1 "R-78E5.0-1.0" H 2450 2226 45  0000 C CNN
F 2 "Silicon-Custom:DC-DC_CONVERTER_78XX" H 2450 2200 20  0001 C CNN
F 3 "" H 2450 1950 60  0001 C CNN
F 4 "COM-13655" H 2450 2131 60  0000 C CNN "Field4"
	1    2450 1950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:10NF-PTH-10MM-10000V-1-% C1
U 1 1 6035393D
P 1000 2250
F 0 "C1" H 1108 2395 45  0000 L CNN
F 1 "10nF" H 1108 2311 45  0000 L CNN
F 2 "Capacitors:CAP-PTH-10MM" H 1000 2500 20  0001 C CNN
F 3 "" H 1000 2250 50  0001 C CNN
F 4 "CAP-09321" H 1108 2216 60  0000 L CNN "Field4"
	1    1000 2250
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:10NF-PTH-10MM-10000V-1-% C4
U 1 1 6035DEB7
P 2900 2250
F 0 "C4" H 3008 2395 45  0000 L CNN
F 1 "10nF" H 3008 2311 45  0000 L CNN
F 2 "Capacitors:CAP-PTH-10MM" H 2900 2500 20  0001 C CNN
F 3 "" H 2900 2250 50  0001 C CNN
F 4 "CAP-09321" H 3008 2216 60  0000 L CNN "Field4"
	1    2900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2350 2450 2350
Wire Wire Line
	2450 2250 2450 2350
Connection ~ 2450 2350
Wire Wire Line
	2450 2350 2900 2350
Wire Wire Line
	2150 1950 1000 1950
Connection ~ 1000 1950
Wire Wire Line
	1000 1950 1000 2050
Wire Wire Line
	2750 1950 2900 1950
Wire Wire Line
	2900 1950 2900 2050
Wire Wire Line
	2900 1950 4400 1950
Wire Wire Line
	4400 1950 4400 2800
Wire Wire Line
	4400 2800 4650 2800
Connection ~ 2900 1950
Wire Wire Line
	4650 1950 4400 1950
Connection ~ 4400 1950
Wire Wire Line
	4650 2250 4650 2500
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S1
U 1 1 6031EDA1
P 4000 2700
F 0 "S1" V 4095 2656 45  0000 R CNN
F 1 "MOMENTARY-SWITCH-SPST-PTH-6.0MM" V 4011 2656 45  0000 R CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 4000 2900 20  0001 C CNN
F 3 "" H 4000 2700 50  0001 C CNN
F 4 " SWCH-08441" V 3916 2656 60  0000 R CNN "Field4"
	1    4000 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2500 4650 2500
Connection ~ 4650 2500
Wire Wire Line
	4000 2900 1000 2900
Wire Wire Line
	1000 2900 1000 2550
Connection ~ 1000 2350
Connection ~ 1000 2900
Wire Wire Line
	2650 3350 1000 3350
Connection ~ 1000 3350
Wire Wire Line
	2650 3950 1000 3950
Connection ~ 1000 3950
Wire Wire Line
	1000 3950 1000 3350
Wire Wire Line
	4650 4600 1000 4600
Connection ~ 4650 4600
Connection ~ 1000 4600
Wire Wire Line
	1000 4600 1000 3950
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S2
U 1 1 603A51EF
P 6900 4500
F 0 "S2" V 6995 4456 45  0000 R CNN
F 1 "MOMENTARY-SWITCH-SPST-PTH-6.0MM" V 6911 4456 45  0000 R CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 6900 4700 20  0001 C CNN
F 3 "" H 6900 4500 50  0001 C CNN
F 4 " SWCH-08441" V 6816 4456 60  0000 R CNN "Field4"
	1    6900 4500
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-Switches:MOMENTARY-SWITCH-SPST-PTH-6.0MM S3
U 1 1 603AF428
P 6900 5100
F 0 "S3" V 6995 5056 45  0000 R CNN
F 1 "MOMENTARY-SWITCH-SPST-PTH-6.0MM" V 6911 5056 45  0000 R CNN
F 2 "Switches:TACTILE_SWITCH_PTH_6.0MM" H 6900 5300 20  0001 C CNN
F 3 "" H 6900 5100 50  0001 C CNN
F 4 " SWCH-08441" V 6816 5056 60  0000 R CNN "Field4"
	1    6900 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 4300 6900 4300
Wire Wire Line
	6550 4400 6750 4400
Wire Wire Line
	6750 4400 6750 4900
Wire Wire Line
	6750 4900 6900 4900
Wire Wire Line
	6900 4700 6900 4750
Wire Wire Line
	6900 5300 6900 5350
$Comp
L SparkFun-LED:LED5MM D1
U 1 1 603CF3E0
P 6850 1800
F 0 "D1" V 7160 1750 45  0000 C CNN
F 1 "LED5MM" V 7076 1750 45  0000 C CNN
F 2 "LED:LED_5MM" V 6650 1800 20  0001 C CNN
F 3 "" H 6850 1800 50  0001 C CNN
F 4 "XXX-00000" V 6981 1750 60  0000 C CNN "Field4"
	1    6850 1800
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D2
U 1 1 603D978C
P 8300 1800
F 0 "D2" V 8610 1750 45  0000 C CNN
F 1 "LED5MM" V 8526 1750 45  0000 C CNN
F 2 "LED:LED_5MM" V 8100 1800 20  0001 C CNN
F 3 "" H 8300 1800 50  0001 C CNN
F 4 "XXX-00000" V 8431 1750 60  0000 C CNN "Field4"
	1    8300 1800
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D3
U 1 1 603DA468
P 8300 2450
F 0 "D3" V 8610 2400 45  0000 C CNN
F 1 "LED5MM" V 8526 2400 45  0000 C CNN
F 2 "LED:LED_5MM" V 8100 2450 20  0001 C CNN
F 3 "" H 8300 2450 50  0001 C CNN
F 4 "XXX-00000" V 8431 2400 60  0000 C CNN "Field4"
	1    8300 2450
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D4
U 1 1 603DB376
P 8300 3100
F 0 "D4" V 8610 3050 45  0000 C CNN
F 1 "LED5MM" V 8526 3050 45  0000 C CNN
F 2 "LED:LED_5MM" V 8100 3100 20  0001 C CNN
F 3 "" H 8300 3100 50  0001 C CNN
F 4 "XXX-00000" V 8431 3050 60  0000 C CNN "Field4"
	1    8300 3100
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D6
U 1 1 60419645
P 9450 1800
F 0 "D6" V 9760 1750 45  0000 C CNN
F 1 "LED5MM" V 9676 1750 45  0000 C CNN
F 2 "LED:LED_5MM" V 9250 1800 20  0001 C CNN
F 3 "" H 9450 1800 50  0001 C CNN
F 4 "XXX-00000" V 9581 1750 60  0000 C CNN "Field4"
	1    9450 1800
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D7
U 1 1 6041964C
P 9450 2450
F 0 "D7" V 9760 2400 45  0000 C CNN
F 1 "LED5MM" V 9676 2400 45  0000 C CNN
F 2 "LED:LED_5MM" V 9250 2450 20  0001 C CNN
F 3 "" H 9450 2450 50  0001 C CNN
F 4 "XXX-00000" V 9581 2400 60  0000 C CNN "Field4"
	1    9450 2450
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D8
U 1 1 60419653
P 9450 3100
F 0 "D8" V 9760 3050 45  0000 C CNN
F 1 "LED5MM" V 9676 3050 45  0000 C CNN
F 2 "LED:LED_5MM" V 9250 3100 20  0001 C CNN
F 3 "" H 9450 3100 50  0001 C CNN
F 4 "XXX-00000" V 9581 3050 60  0000 C CNN "Field4"
	1    9450 3100
	0    -1   -1   0   
$EndComp
$Comp
L SparkFun-LED:LED5MM D9
U 1 1 6041965A
P 9450 3750
F 0 "D9" V 9760 3700 45  0000 C CNN
F 1 "LED5MM" V 9676 3700 45  0000 C CNN
F 2 "LED:LED_5MM" V 9250 3750 20  0001 C CNN
F 3 "" H 9450 3750 50  0001 C CNN
F 4 "XXX-00000" V 9581 3700 60  0000 C CNN "Field4"
	1    9450 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 6041E475
P 7350 1800
F 0 "R2" V 7145 1800 50  0000 C CNN
F 1 "330" V 7236 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7390 1790 50  0001 C CNN
F 3 "~" H 7350 1800 50  0001 C CNN
	1    7350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 6041F65D
P 8900 1800
F 0 "R5" V 8695 1800 50  0000 C CNN
F 1 "270" V 8786 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8940 1790 50  0001 C CNN
F 3 "~" H 8900 1800 50  0001 C CNN
	1    8900 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 6042077D
P 8900 2450
F 0 "R6" V 8695 2450 50  0000 C CNN
F 1 "270" V 8786 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8940 2440 50  0001 C CNN
F 3 "~" H 8900 2450 50  0001 C CNN
	1    8900 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R7
U 1 1 60421666
P 8900 3100
F 0 "R7" V 8695 3100 50  0000 C CNN
F 1 "270" V 8786 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8940 3090 50  0001 C CNN
F 3 "~" H 8900 3100 50  0001 C CNN
	1    8900 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 604224CE
P 8900 3750
F 0 "R8" V 8695 3750 50  0000 C CNN
F 1 "270" V 8786 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8940 3740 50  0001 C CNN
F 3 "~" H 8900 3750 50  0001 C CNN
	1    8900 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 604237A0
P 9900 1800
F 0 "R9" V 9695 1800 50  0000 C CNN
F 1 "270" V 9786 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9940 1790 50  0001 C CNN
F 3 "~" H 9900 1800 50  0001 C CNN
	1    9900 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 6042499D
P 9900 2450
F 0 "R10" V 9695 2450 50  0000 C CNN
F 1 "270" V 9786 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9940 2440 50  0001 C CNN
F 3 "~" H 9900 2450 50  0001 C CNN
	1    9900 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 604258F9
P 9900 3100
F 0 "R11" V 9695 3100 50  0000 C CNN
F 1 "270" V 9786 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9940 3090 50  0001 C CNN
F 3 "~" H 9900 3100 50  0001 C CNN
	1    9900 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 604268BC
P 9900 3750
F 0 "R12" V 9695 3750 50  0000 C CNN
F 1 "270" V 9786 3750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9940 3740 50  0001 C CNN
F 3 "~" H 9900 3750 50  0001 C CNN
	1    9900 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 1800 7200 1800
Wire Wire Line
	8500 1800 8750 1800
Wire Wire Line
	8500 2450 8750 2450
Wire Wire Line
	8500 3100 8750 3100
Wire Wire Line
	8500 3750 8750 3750
Wire Wire Line
	9650 3750 9750 3750
Wire Wire Line
	9750 3100 9650 3100
Wire Wire Line
	9650 2450 9750 2450
Wire Wire Line
	9650 1800 9750 1800
Wire Wire Line
	9050 1800 9050 2450
Wire Wire Line
	9050 3100 9050 2450
Connection ~ 9050 2450
Wire Wire Line
	9050 3750 9050 3100
Connection ~ 9050 3100
Wire Wire Line
	10050 1800 10050 2450
Wire Wire Line
	10050 3100 10050 2450
Connection ~ 10050 2450
Wire Wire Line
	10050 3750 10050 3100
Connection ~ 10050 3100
Wire Wire Line
	6750 1800 6750 2500
Wire Wire Line
	6750 2500 6550 2500
Wire Wire Line
	7800 2050 7800 3500
Wire Wire Line
	7800 3500 6550 3500
Wire Wire Line
	6550 3400 7750 3400
Wire Wire Line
	7750 3400 7750 1800
Wire Wire Line
	7750 1800 8200 1800
Wire Wire Line
	8200 2450 7850 2450
Wire Wire Line
	7850 2450 7850 3600
Wire Wire Line
	7850 3600 6550 3600
Wire Wire Line
	6550 3700 7900 3700
Wire Wire Line
	7900 3700 7900 2700
Wire Wire Line
	7900 2700 9350 2700
Wire Wire Line
	9350 2700 9350 2450
Wire Wire Line
	9350 2050 9350 1800
Wire Wire Line
	7800 2050 9350 2050
Wire Wire Line
	8200 3100 7950 3100
Wire Wire Line
	7950 3100 7950 3800
Wire Wire Line
	7950 3800 6550 3800
Wire Wire Line
	6550 3900 8000 3900
Wire Wire Line
	8000 3900 8000 3350
Wire Wire Line
	8000 3350 9350 3350
Wire Wire Line
	9350 3350 9350 3100
Wire Wire Line
	8050 4000 6550 4000
Wire Wire Line
	6550 4100 9350 4100
Wire Wire Line
	9350 4100 9350 3750
$Comp
L SparkFun-LED:LED5MM D5
U 1 1 603DC6E4
P 8300 3750
F 0 "D5" V 8610 3700 45  0000 C CNN
F 1 "LED5MM" V 8526 3700 45  0000 C CNN
F 2 "LED:LED_5MM" V 8100 3750 20  0001 C CNN
F 3 "" H 8300 3750 50  0001 C CNN
F 4 "XXX-00000" V 8431 3700 60  0000 C CNN "Field4"
	1    8300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8050 4000 8050 3750
Wire Wire Line
	8050 3750 8200 3750
Wire Wire Line
	9050 1800 9050 1400
Wire Wire Line
	9050 1400 10050 1400
Wire Wire Line
	10050 1400 10050 1800
Connection ~ 9050 1800
Connection ~ 10050 1800
Wire Wire Line
	7500 1800 7500 1400
Wire Wire Line
	7500 1400 9050 1400
Connection ~ 9050 1400
Wire Wire Line
	10050 4750 10050 5350
Wire Wire Line
	10050 3750 10050 4750
Connection ~ 10050 3750
Connection ~ 10050 4750
Wire Wire Line
	6550 2600 6550 2700
Wire Wire Line
	6550 2700 6550 2800
Connection ~ 6550 2700
Wire Wire Line
	6550 2800 6550 2900
Connection ~ 6550 2800
Wire Wire Line
	6550 2900 6550 3000
Connection ~ 6550 2900
Wire Wire Line
	6550 4500 6550 4600
Wire Wire Line
	6550 4600 6550 4700
Connection ~ 6550 4600
Wire Wire Line
	6550 4700 6550 4800
Connection ~ 6550 4700
Wire Wire Line
	6650 3000 6550 3000
Connection ~ 6550 3000
Wire Wire Line
	6650 3000 6650 1950
Wire Wire Line
	6650 1950 4650 1950
Connection ~ 4650 1950
Wire Wire Line
	6550 4500 6650 4500
Wire Wire Line
	6650 4500 6650 3000
Connection ~ 6550 4500
Connection ~ 6650 3000
Text Notes 7350 7500 0    50   ~ 0
LED Tug Of War
Text Notes 8150 7650 0    50   ~ 0
02/20/2020
Wire Wire Line
	650  1950 1000 1950
Wire Wire Line
	1000 2900 1000 3350
Wire Wire Line
	650  2550 1000 2550
Connection ~ 1000 2550
Wire Wire Line
	1000 2550 1000 2350
$Comp
L Connector_Generic:Conn_02x01 J1
U 1 1 603DC814
P 650 2200
F 0 "J1" V 654 2280 50  0000 L CNN
F 1 "Conn_02x01" V 745 2280 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 650 2200 50  0001 C CNN
F 3 "~" H 650 2200 50  0001 C CNN
	1    650  2200
	0    1    1    0   
$EndComp
Wire Wire Line
	650  2000 650  1950
Wire Wire Line
	650  2500 650  2550
Wire Wire Line
	6900 4750 10050 4750
Wire Wire Line
	6900 5350 10050 5350
Wire Wire Line
	1000 4600 650  4600
Text Label 10450 5350 2    50   ~ 0
GNDREF
Wire Wire Line
	10050 5350 10450 5350
Connection ~ 10050 5350
Text Label 650  4600 0    50   ~ 0
GNDREF
Text Label 3050 1750 2    50   ~ 0
5v
Wire Wire Line
	3050 1750 2900 1750
Wire Wire Line
	2900 1750 2900 1950
$EndSCHEMATC
