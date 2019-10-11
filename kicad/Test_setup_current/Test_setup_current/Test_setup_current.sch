EESchema Schematic File Version 4
LIBS:Test_setup_current-cache
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
L Device:Amperemeter_DC MES1
U 1 1 5D99C14A
P 6250 2650
F 0 "MES1" V 5960 2650 50  0000 C CNN
F 1 "Amperemeter_DC" V 6051 2650 50  0000 C CNN
F 2 "" V 6250 2750 50  0001 C CNN
F 3 "~" V 6250 2750 50  0001 C CNN
	1    6250 2650
	0    1    1    0   
$EndComp
$Comp
L Allegro:R R1
U 1 1 5D99C795
P 7100 3050
F 0 "R1" H 7170 3096 50  0000 L CNN
F 1 "Load_Resistor" H 7170 3005 50  0000 L CNN
F 2 "" V 7030 3050 50  0000 C CNN
F 3 "" H 7100 3050 50  0000 C CNN
	1    7100 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2650 7100 2900
Wire Wire Line
	7100 3750 7100 4050
Wire Wire Line
	7100 4050 5300 4050
$Comp
L inductors:R_Small R2
U 1 1 5D99DB5A
P 7100 3650
F 0 "R2" H 7159 3696 50  0000 L CNN
F 1 "Sensing _Resistor" H 7159 3605 50  0000 L CNN
F 2 "" H 7100 3650 60  0000 C CNN
F 3 "" H 7100 3650 60  0000 C CNN
	1    7100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2650 7100 2650
Wire Wire Line
	7100 3200 7100 3400
Wire Wire Line
	6050 2650 5250 2650
Wire Wire Line
	7100 3400 6150 3400
Connection ~ 7100 3400
Wire Wire Line
	7100 3400 7100 3550
$Comp
L fairchild:GND #PWR01
U 1 1 5D99F134
P 7100 4150
F 0 "#PWR01" H 7100 4150 30  0001 C CNN
F 1 "GND" H 7100 4080 30  0001 C CNN
F 2 "" H 7100 4150 60  0000 C CNN
F 3 "" H 7100 4150 60  0000 C CNN
	1    7100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4150 7100 4050
Connection ~ 7100 4050
Text GLabel 6150 3400 0    50   Output ~ 0
Current_Sensing_Amplifier
Text GLabel 5250 2650 0    50   Input ~ 0
V_servor
Text GLabel 5300 4050 0    50   Output ~ 0
GND
$Comp
L seek:DC_power_supply U1
U 1 1 5DA073B1
P 9150 3750
F 0 "U1" H 8272 3771 50  0000 R CNN
F 1 "DC_power_supply" H 8272 3680 50  0000 R CNN
F 2 "" H 9150 3750 50  0001 C CNN
F 3 "" H 9150 3750 50  0001 C CNN
	1    9150 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7100 3400 8350 3400
Wire Wire Line
	8350 3400 8350 3600
Wire Wire Line
	8350 3600 8650 3600
Wire Wire Line
	8650 3900 8350 3900
Wire Wire Line
	8350 3900 8350 4050
Wire Wire Line
	8350 4050 7100 4050
$EndSCHEMATC
