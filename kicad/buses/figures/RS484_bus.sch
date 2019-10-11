EESchema Schematic File Version 4
LIBS:figures-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L EEE4022S:RS485_Master U14
U 1 1 5D546825
P 5000 3600
F 0 "U14" V 5315 3942 50  0000 C CNN
F 1 "RS485_Master" V 5224 3942 50  0000 C CNN
F 2 "" H 5000 3600 50  0001 C CNN
F 3 "" H 5000 3600 50  0001 C CNN
	1    5000 3600
	0    -1   -1   0   
$EndComp
$Comp
L EEE4022S:RS485_Slave U15
U 1 1 5D5473C2
P 5900 3350
F 0 "U15" H 5900 4150 50  0000 L CNN
F 1 "RS485_Slave" V 5900 3500 50  0000 L CNN
F 2 "" H 5900 3350 50  0001 C CNN
F 3 "" H 5900 3350 50  0001 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
$Comp
L EEE4022S:RS485_Slave U16
U 1 1 5D547CE9
P 6250 3850
F 0 "U16" H 6250 4650 50  0000 L CNN
F 1 "RS485_Slave" V 6250 4000 50  0000 L CNN
F 2 "" H 6250 3850 50  0001 C CNN
F 3 "" H 6250 3850 50  0001 C CNN
	1    6250 3850
	-1   0    0    1   
$EndComp
$Comp
L EEE4022S:RS485_Slave U17
U 1 1 5D5481A1
P 6600 3350
F 0 "U17" H 6600 4150 50  0000 L CNN
F 1 "RS485_Slave" V 6600 3500 50  0000 L CNN
F 2 "" H 6600 3350 50  0001 C CNN
F 3 "" H 6600 3350 50  0001 C CNN
	1    6600 3350
	1    0    0    -1  
$EndComp
$Comp
L EEE4022S:RS485_Slave U18
U 1 1 5D5482D0
P 6950 3850
F 0 "U18" H 6950 4650 50  0000 L CNN
F 1 "RS485_Slave" V 6950 4000 50  0000 L CNN
F 2 "" H 6950 3850 50  0001 C CNN
F 3 "" H 6950 3850 50  0001 C CNN
	1    6950 3850
	-1   0    0    1   
$EndComp
$Comp
L EEE4022S:RS485_Slave U19
U 1 1 5D548550
P 7300 3350
F 0 "U19" H 7300 4150 50  0000 L CNN
F 1 "RS485_Slave" V 7300 3500 50  0000 L CNN
F 2 "" H 7300 3350 50  0001 C CNN
F 3 "" H 7300 3350 50  0001 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
$Comp
L Allegro:R R1
U 1 1 5D548B24
P 5300 3600
F 0 "R1" H 5230 3554 50  0000 R CNN
F 1 "120R" V 5300 3700 50  0000 R CNN
F 2 "" V 5230 3600 50  0000 C CNN
F 3 "" H 5300 3600 50  0000 C CNN
	1    5300 3600
	-1   0    0    1   
$EndComp
$Comp
L Allegro:R R2
U 1 1 5D54A288
P 7600 3600
F 0 "R2" H 7530 3554 50  0000 R CNN
F 1 "120R" V 7600 3700 50  0000 R CNN
F 2 "" V 7530 3600 50  0000 C CNN
F 3 "" H 7600 3600 50  0000 C CNN
	1    7600 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3550 5200 3550
Wire Wire Line
	5200 3550 5200 3450
Wire Wire Line
	5200 3450 5300 3450
Wire Wire Line
	5500 3450 5500 3550
Wire Wire Line
	7500 3550 7500 3450
Wire Wire Line
	7500 3450 7600 3450
Connection ~ 5300 3450
Wire Wire Line
	5300 3450 5500 3450
Wire Wire Line
	5100 3650 5200 3650
Wire Wire Line
	5200 3650 5200 3750
Wire Wire Line
	5200 3750 5300 3750
Wire Wire Line
	5500 3750 5500 3650
Wire Wire Line
	7500 3650 7500 3750
Wire Wire Line
	7500 3750 7600 3750
Connection ~ 5300 3750
Wire Wire Line
	5300 3750 5500 3750
Wire Wire Line
	5500 3650 5850 3650
Wire Wire Line
	5500 3550 5950 3550
Wire Wire Line
	5950 3450 5950 3550
Connection ~ 5950 3550
Wire Wire Line
	5950 3550 6200 3550
Wire Wire Line
	5850 3450 5850 3650
Connection ~ 5850 3650
Wire Wire Line
	5850 3650 6300 3650
Wire Wire Line
	6200 3750 6200 3550
Connection ~ 6200 3550
Wire Wire Line
	6200 3550 6650 3550
Wire Wire Line
	6300 3750 6300 3650
Connection ~ 6300 3650
Wire Wire Line
	6300 3650 6550 3650
Wire Wire Line
	6650 3450 6650 3550
Connection ~ 6650 3550
Wire Wire Line
	6650 3550 6900 3550
Wire Wire Line
	6550 3450 6550 3650
Connection ~ 6550 3650
Wire Wire Line
	6550 3650 7000 3650
Wire Wire Line
	7250 3450 7250 3650
Connection ~ 7250 3650
Wire Wire Line
	7250 3650 7500 3650
Wire Wire Line
	7350 3450 7350 3550
Connection ~ 7350 3550
Wire Wire Line
	7350 3550 7500 3550
Wire Wire Line
	6900 3750 6900 3550
Connection ~ 6900 3550
Wire Wire Line
	6900 3550 7350 3550
Wire Wire Line
	7000 3750 7000 3650
Connection ~ 7000 3650
Wire Wire Line
	7000 3650 7250 3650
$EndSCHEMATC
