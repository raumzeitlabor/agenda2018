EESchema Schematic File Version 2
LIBS:ocarina-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:phototransistor
LIBS:ocarina-cache
EELAYER 25 0
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
L CONN_01X01 P1
U 1 1 58D839E1
P 4600 1500
F 0 "P1" H 4600 1600 50  0000 C CNN
F 1 "CONN_01X01" V 4700 1500 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 4600 1500 50  0001 C CNN
F 3 "" H 4600 1500 50  0000 C CNN
	1    4600 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 58D83A36
P 4900 1500
F 0 "P2" H 4900 1600 50  0000 C CNN
F 1 "CONN_01X01" V 5000 1500 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 4900 1500 50  0001 C CNN
F 3 "" H 4900 1500 50  0000 C CNN
	1    4900 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 58D83A57
P 5200 1500
F 0 "P3" H 5200 1600 50  0000 C CNN
F 1 "CONN_01X01" V 5300 1500 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 5200 1500 50  0001 C CNN
F 3 "" H 5200 1500 50  0000 C CNN
	1    5200 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 58D83A84
P 5500 1500
F 0 "P4" H 5500 1600 50  0000 C CNN
F 1 "CONN_01X01" V 5600 1500 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 5500 1500 50  0001 C CNN
F 3 "" H 5500 1500 50  0000 C CNN
	1    5500 1500
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 58D83B70
P 2400 2500
F 0 "#PWR01" H 2400 2350 50  0001 C CNN
F 1 "VCC" H 2400 2650 50  0000 C CNN
F 2 "" H 2400 2500 50  0000 C CNN
F 3 "" H 2400 2500 50  0000 C CNN
	1    2400 2500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 58D83B93
P 2400 3700
F 0 "#PWR02" H 2400 3450 50  0001 C CNN
F 1 "GND" H 2400 3550 50  0000 C CNN
F 2 "" H 2400 3700 50  0000 C CNN
F 3 "" H 2400 3700 50  0000 C CNN
	1    2400 3700
	1    0    0    -1  
$EndComp
$Comp
L Phototransistor U1
U 1 1 58D83F42
P 5500 3800
F 0 "U1" H 5600 3950 60  0000 C CNN
F 1 "Phototransistor" V 5250 3800 60  0001 C CNN
F 2 "LEDs:LED-5MM" H 5480 3800 60  0001 C CNN
F 3 "" H 5480 3800 60  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 58D83FF0
P 5500 3600
F 0 "#PWR03" H 5500 3450 50  0001 C CNN
F 1 "VCC" H 5500 3750 50  0000 C CNN
F 2 "" H 5500 3600 50  0000 C CNN
F 3 "" H 5500 3600 50  0000 C CNN
	1    5500 3600
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58D84012
P 5650 4000
F 0 "R2" V 5730 4000 50  0000 C CNN
F 1 "10K" V 5650 4000 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 5580 4000 50  0001 C CNN
F 3 "" H 5650 4000 50  0000 C CNN
	1    5650 4000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 58D8406A
P 5800 4100
F 0 "#PWR04" H 5800 3850 50  0001 C CNN
F 1 "GND" H 5800 3950 50  0000 C CNN
F 2 "" H 5800 4100 50  0000 C CNN
F 3 "" H 5800 4100 50  0000 C CNN
	1    5800 4100
	1    0    0    -1  
$EndComp
$Comp
L Battery-RESCUE-ocarina BT1
U 1 1 58D840BA
P 1800 3050
F 0 "BT1" H 1900 3100 50  0000 L CNN
F 1 "Battery" H 1900 3000 50  0000 L CNN
F 2 "mybattery:batteryholder_AAA_BC0401" V 1800 3090 50  0001 C CNN
F 3 "" V 1800 3090 50  0000 C CNN
	1    1800 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 58D840FE
P 1800 2900
F 0 "#PWR05" H 1800 2750 50  0001 C CNN
F 1 "VCC" H 1800 3050 50  0000 C CNN
F 2 "" H 1800 2900 50  0000 C CNN
F 3 "" H 1800 2900 50  0000 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 58D84124
P 1800 3500
F 0 "#PWR06" H 1800 3250 50  0001 C CNN
F 1 "GND" H 1800 3350 50  0000 C CNN
F 2 "" H 1800 3500 50  0000 C CNN
F 3 "" H 1800 3500 50  0000 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
$Comp
L SPEAKER SP1
U 1 1 58D8415E
P 7600 2500
F 0 "SP1" H 7500 2750 50  0000 C CNN
F 1 "SPEAKER" H 7500 2250 50  0000 C CNN
F 2 "speaker:CP_Radial_D24.0mm_P10.00mm_SnapIn" H 7600 2500 50  0001 C CNN
F 3 "" H 7600 2500 50  0000 C CNN
	1    7600 2500
	1    0    0    -1  
$EndComp
$Comp
L LED-RESCUE-ocarina D1
U 1 1 58D84204
P 5600 4500
F 0 "D1" H 5600 4600 50  0000 C CNN
F 1 "LED" H 5600 4400 50  0000 C CNN
F 2 "LEDs:LED-3MM" H 5600 4500 50  0001 C CNN
F 3 "" H 5600 4500 50  0000 C CNN
	1    5600 4500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR07
U 1 1 58D84261
P 5800 4500
F 0 "#PWR07" H 5800 4250 50  0001 C CNN
F 1 "GND" H 5800 4350 50  0000 C CNN
F 2 "" H 5800 4500 50  0000 C CNN
F 3 "" H 5800 4500 50  0000 C CNN
	1    5800 4500
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58D8428D
P 5250 4500
F 0 "R1" V 5330 4500 50  0000 C CNN
F 1 "10" V 5250 4500 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 5180 4500 50  0001 C CNN
F 3 "" H 5250 4500 50  0000 C CNN
	1    5250 4500
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR08
U 1 1 58DBA437
P 5100 4500
F 0 "#PWR08" H 5100 4350 50  0001 C CNN
F 1 "VCC" H 5100 4650 50  0000 C CNN
F 2 "" H 5100 4500 50  0000 C CNN
F 3 "" H 5100 4500 50  0000 C CNN
	1    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L ATTINY84-20PU U2
U 1 1 5AA67ACC
P 3450 3100
F 0 "U2" H 2600 3850 50  0000 C CNN
F 1 "ATTINY84-20PU" H 4150 2350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm" H 3450 2900 50  0001 C CIN
F 3 "" H 3450 3100 50  0001 C CNN
	1    3450 3100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5AA68CBA
P 6150 2500
F 0 "R3" V 6230 2500 50  0000 C CNN
F 1 "R" V 6150 2500 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6080 2500 50  0001 C CNN
F 3 "" H 6150 2500 50  0001 C CNN
	1    6150 2500
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5AA68E11
P 6150 2600
F 0 "R4" V 6230 2600 50  0000 C CNN
F 1 "R" V 6150 2600 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6080 2600 50  0001 C CNN
F 3 "" H 6150 2600 50  0001 C CNN
	1    6150 2600
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5AA68E56
P 6150 2700
F 0 "R5" V 6230 2700 50  0000 C CNN
F 1 "R" V 6150 2700 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6080 2700 50  0001 C CNN
F 3 "" H 6150 2700 50  0001 C CNN
	1    6150 2700
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AA68EA0
P 6150 2800
F 0 "R6" V 6230 2800 50  0000 C CNN
F 1 "R" V 6150 2800 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6080 2800 50  0001 C CNN
F 3 "" H 6150 2800 50  0001 C CNN
	1    6150 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4000 5800 4100
Connection ~ 5500 4000
Wire Wire Line
	5500 4000 4900 4000
Wire Wire Line
	4900 4000 4900 3200
$Comp
L CONN_01X01 P5
U 1 1 5AF43C19
P 5800 1500
F 0 "P5" H 5800 1600 50  0000 C CNN
F 1 "CONN_01X01" V 5900 1500 50  0001 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 5800 1500 50  0001 C CNN
F 3 "" H 5800 1500 50  0000 C CNN
	1    5800 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2500 6300 3000
Connection ~ 6300 2600
Connection ~ 6300 2700
$Comp
L R R7
U 1 1 5AF43D3A
P 6150 2900
F 0 "R7" V 6230 2900 50  0000 C CNN
F 1 "R" V 6150 2900 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6080 2900 50  0001 C CNN
F 3 "" H 6150 2900 50  0001 C CNN
	1    6150 2900
	0    1    1    0   
$EndComp
Connection ~ 6300 2800
Wire Wire Line
	6300 3000 4500 3000
Connection ~ 6300 2900
Wire Wire Line
	4500 2900 6000 2900
Wire Wire Line
	4500 2800 6000 2800
Wire Wire Line
	4500 2700 6000 2700
Wire Wire Line
	4500 2600 6000 2600
Wire Wire Line
	4500 2500 6000 2500
Wire Wire Line
	4600 1700 4600 2500
Connection ~ 4600 2500
Wire Wire Line
	4900 1700 4900 2600
Connection ~ 4900 2600
Wire Wire Line
	5200 1700 5200 2700
Connection ~ 5200 2700
Wire Wire Line
	5500 1700 5500 2800
Connection ~ 5500 2800
Wire Wire Line
	5800 1700 5800 2900
Connection ~ 5800 2900
$Comp
L BC547 Q1
U 1 1 5AF43FB4
P 7200 3100
F 0 "Q1" H 7400 3175 50  0000 L CNN
F 1 "BC547" H 7400 3100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 7400 3025 50  0001 L CIN
F 3 "" H 7200 3100 50  0001 L CNN
	1    7200 3100
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5AF44191
P 6650 3100
F 0 "R8" V 6730 3100 50  0000 C CNN
F 1 "R" V 6650 3100 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6580 3100 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
	1    6650 3100
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5AF441E5
P 6900 3400
F 0 "C2" H 6925 3500 50  0000 L CNN
F 1 "C" H 6925 3300 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 6938 3250 50  0001 C CNN
F 3 "" H 6900 3400 50  0001 C CNN
	1    6900 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5AF4462B
P 6900 3550
F 0 "#PWR09" H 6900 3300 50  0001 C CNN
F 1 "GND" H 6900 3400 50  0000 C CNN
F 2 "" H 6900 3550 50  0000 C CNN
F 3 "" H 6900 3550 50  0000 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3100 7000 3100
Wire Wire Line
	6900 3250 6900 3100
Connection ~ 6900 3100
Wire Wire Line
	6500 3100 4500 3100
$Comp
L GND #PWR010
U 1 1 5AF4473B
P 7300 3300
F 0 "#PWR010" H 7300 3050 50  0001 C CNN
F 1 "GND" H 7300 3150 50  0000 C CNN
F 2 "" H 7300 3300 50  0000 C CNN
F 3 "" H 7300 3300 50  0000 C CNN
	1    7300 3300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 5AF448FF
P 7300 2100
F 0 "#PWR011" H 7300 1950 50  0001 C CNN
F 1 "VCC" H 7300 2250 50  0000 C CNN
F 2 "" H 7300 2100 50  0000 C CNN
F 3 "" H 7300 2100 50  0000 C CNN
	1    7300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2400 7300 2100
Wire Wire Line
	7300 2900 7300 2600
Wire Wire Line
	4900 3200 4500 3200
$Comp
L C C1
U 1 1 5AF457C1
P 2400 3050
F 0 "C1" H 2425 3150 50  0000 L CNN
F 1 "C" H 2425 2950 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2438 2900 50  0001 C CNN
F 3 "" H 2400 3050 50  0001 C CNN
	1    2400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2500 2400 2900
Wire Wire Line
	2400 3200 2400 3700
$Comp
L Battery-RESCUE-ocarina BT2
U 1 1 5AF7491C
P 1800 3350
F 0 "BT2" H 1900 3400 50  0000 L CNN
F 1 "Battery" H 1900 3300 50  0000 L CNN
F 2 "mybattery:batteryholder_AAA_BC0401" V 1800 3390 50  0001 C CNN
F 3 "" V 1800 3390 50  0000 C CNN
	1    1800 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC