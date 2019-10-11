EESchema Schematic File Version 4
LIBS:servo_pcb_8A-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "EEE4022S - Servo PCB"
Date "2019-08-17"
Rev "0.0"
Comp "University of Cape Town"
Comment1 "Project By: Simplicity S Dywili (dywsim001@myuct.ac.za)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2050 1050 1950 1200
U 5D563508
F0 "8A_buck" 50
F1 "8A_buck.sch" 50
F2 "5V" I L 2050 1550 100
F3 "V_Servo" O R 4000 1650 100
F4 "EN_8A" I L 2050 1750 100
$EndSheet
$Sheet
S 2050 2500 1950 1200
U 5D5638AE
F0 "1_2A_buck" 50
F1 "1_2A_buck.sch" 50
F2 "5V" O R 4000 3050 100
$EndSheet
Text GLabel 1000 1600 2    50   Input ~ 0
V_in
Text GLabel 1000 1700 2    50   Input ~ 0
GND
$Sheet
S 2050 3950 1950 1100
U 5D5D1B91
F0 "RS485toUART" 100
F1 "RS485toUART.sch" 100
F2 "RX" O L 2050 4250 100
F3 "TX" I L 2050 4500 100
F4 "EN_RS485" I L 2050 4750 100
F5 "B" I R 4000 4200 100
F6 "A" O R 4000 4700 100
$EndSheet
$Comp
L Device:Crystal Y1
U 1 1 5D5E544D
P 9750 2750
F 0 "Y1" V 9704 2881 50  0000 L CNN
F 1 "16MHz" V 9795 2881 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 9750 2750 50  0001 C CNN
F 3 "~" H 9750 2750 50  0001 C CNN
	1    9750 2750
	0    1    1    0   
$EndComp
$Comp
L atmel:ATMEGA328P-A IC1
U 1 1 5D5E5E8D
P 7450 3200
F 0 "IC1" H 7500 4604 40  0000 C CNN
F 1 "ATMEGA328P-A" H 7500 4528 40  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7500 4460 30  0000 C CIN
F 3 "http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf" H 7500 4483 60  0001 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
$Comp
L Allegro:C C7
U 1 1 5D5E9D45
P 9500 3050
F 0 "C7" H 9615 3096 50  0000 L CNN
F 1 "22pF" H 9615 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9538 2900 50  0001 C CNN
F 3 "" H 9500 3050 50  0000 C CNN
	1    9500 3050
	1    0    0    -1  
$EndComp
$Comp
L Allegro:C C6
U 1 1 5D5EB694
P 9500 2450
F 0 "C6" H 9615 2496 50  0000 L CNN
F 1 "22pF" H 9615 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9538 2300 50  0001 C CNN
F 3 "" H 9500 2450 50  0000 C CNN
	1    9500 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2800 9300 2800
Wire Wire Line
	8450 2700 9300 2700
Wire Wire Line
	9300 2800 9300 2900
Wire Wire Line
	9300 2900 9500 2900
Connection ~ 9500 2900
Wire Wire Line
	9500 2900 9750 2900
Wire Wire Line
	9300 2700 9300 2600
Wire Wire Line
	9300 2600 9500 2600
Connection ~ 9500 2600
Wire Wire Line
	9500 2600 9750 2600
Wire Wire Line
	9500 2300 10250 2300
Wire Wire Line
	10250 2300 10250 2750
Wire Wire Line
	10250 3200 9500 3200
Text GLabel 10350 2750 2    50   Input ~ 0
GND
Wire Wire Line
	10350 2750 10250 2750
Connection ~ 10250 2750
Wire Wire Line
	10250 2750 10250 3200
Text GLabel 9450 3700 2    50   Input ~ 0
RX
Text GLabel 9450 3800 2    50   Output ~ 0
TX
Wire Wire Line
	8450 3700 9450 3700
Wire Wire Line
	8450 3800 9450 3800
Text GLabel 9450 4000 2    50   Output ~ 0
EN_RS485
Wire Wire Line
	8450 4000 9450 4000
Wire Wire Line
	6550 4200 6550 4300
Wire Wire Line
	6550 4300 6550 4400
Connection ~ 6550 4300
Wire Wire Line
	6550 4400 6550 4550
Connection ~ 6550 4400
Text GLabel 5400 2100 0    50   Input ~ 0
5V
$Comp
L Allegro:R R3
U 1 1 5D5F47A9
P 6250 2250
F 0 "R3" H 6320 2296 50  0000 L CNN
F 1 "0R" H 6320 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6180 2250 50  0001 C CNN
F 3 "" H 6250 2250 50  0000 C CNN
	1    6250 2250
	1    0    0    -1  
$EndComp
Connection ~ 6250 2100
Wire Wire Line
	6250 2100 6500 2100
Wire Wire Line
	6250 2400 6550 2400
Wire Wire Line
	6550 2200 6500 2200
Wire Wire Line
	6500 2200 6500 2100
Connection ~ 6500 2100
Wire Wire Line
	6500 2100 6550 2100
$Comp
L Allegro:C C2
U 1 1 5D5F6460
P 5850 2250
F 0 "C2" H 5965 2296 50  0000 L CNN
F 1 "0.1uF" H 5965 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5888 2100 50  0001 C CNN
F 3 "" H 5850 2250 50  0000 C CNN
	1    5850 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2100 5850 2100
Connection ~ 5850 2100
Wire Wire Line
	5850 2100 6250 2100
$Comp
L Allegro:C C3
U 1 1 5D5F732A
P 6250 2550
F 0 "C3" H 6365 2596 50  0000 L CNN
F 1 "0.1uF" H 6365 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6288 2400 50  0001 C CNN
F 3 "" H 6250 2550 50  0000 C CNN
	1    6250 2550
	1    0    0    -1  
$EndComp
$Comp
L Allegro:C C1
U 1 1 5D5F78F2
P 5650 2250
F 0 "C1" H 5550 2350 50  0000 L CNN
F 1 "0.1uF" V 5500 2150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 2100 50  0001 C CNN
F 3 "" H 5650 2250 50  0000 C CNN
	1    5650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2100 5400 2100
Connection ~ 5650 2100
Wire Wire Line
	5850 2400 5750 2400
Connection ~ 6250 2400
$Comp
L power:GND #PWR04
U 1 1 5D5FA92C
P 5750 2400
F 0 "#PWR04" H 5750 2150 50  0001 C CNN
F 1 "GND" H 5755 2227 50  0000 C CNN
F 2 "" H 5750 2400 50  0001 C CNN
F 3 "" H 5750 2400 50  0001 C CNN
	1    5750 2400
	1    0    0    -1  
$EndComp
Connection ~ 5750 2400
Wire Wire Line
	5750 2400 5650 2400
$Comp
L power:GND #PWR05
U 1 1 5D5FACBA
P 6250 2700
F 0 "#PWR05" H 6250 2450 50  0001 C CNN
F 1 "GND" H 6255 2527 50  0000 C CNN
F 2 "" H 6250 2700 50  0001 C CNN
F 3 "" H 6250 2700 50  0001 C CNN
	1    6250 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D5FAF60
P 6550 4550
F 0 "#PWR07" H 6550 4300 50  0001 C CNN
F 1 "GND" H 6555 4377 50  0000 C CNN
F 2 "" H 6550 4550 50  0001 C CNN
F 3 "" H 6550 4550 50  0001 C CNN
	1    6550 4550
	1    0    0    -1  
$EndComp
$Comp
L Reference_Voltage:LM4040DBZ-2.0 U1
U 1 1 5D5FCCF6
P 5350 3400
F 0 "U1" V 5396 3312 50  0000 R CNN
F 1 "LM4040D20IDBZR" V 5305 3312 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5350 3200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm4040-n.pdf" H 5350 3400 50  0001 C CIN
	1    5350 3400
	0    -1   -1   0   
$EndComp
$Comp
L Allegro:R R1
U 1 1 5D5FDBCC
P 5350 3050
F 0 "R1" H 5420 3096 50  0000 L CNN
F 1 "1K" H 5420 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5280 3050 50  0001 C CNN
F 3 "" H 5350 3050 50  0000 C CNN
	1    5350 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D5FE159
P 5350 3600
F 0 "#PWR03" H 5350 3350 50  0001 C CNN
F 1 "GND" H 5355 3427 50  0000 C CNN
F 2 "" H 5350 3600 50  0001 C CNN
F 3 "" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
Text GLabel 5350 2850 1    50   Input ~ 0
5V
Wire Wire Line
	5350 2850 5350 2900
Wire Wire Line
	5350 3200 5350 3250
Wire Wire Line
	5350 3550 5350 3600
$Comp
L Allegro:C C4
U 1 1 5D600E3F
P 6450 2850
F 0 "C4" H 6565 2896 50  0000 L CNN
F 1 "1uF" V 6600 2700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 2700 50  0001 C CNN
F 3 "" H 6450 2850 50  0000 C CNN
	1    6450 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2700 6450 2700
$Comp
L power:GND #PWR06
U 1 1 5D60251F
P 6450 3000
F 0 "#PWR06" H 6450 2750 50  0001 C CNN
F 1 "GND" H 6455 2827 50  0000 C CNN
F 2 "" H 6450 3000 50  0001 C CNN
F 3 "" H 6450 3000 50  0001 C CNN
	1    6450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3200 6350 3200
Wire Wire Line
	6350 3200 6350 2700
Wire Wire Line
	6350 2700 6450 2700
Connection ~ 5350 3200
Connection ~ 6450 2700
Text GLabel 9450 3350 2    50   BiDi ~ 0
SDA
Text GLabel 9450 3450 2    50   Output ~ 0
SCL
Wire Wire Line
	9450 3450 8450 3450
Wire Wire Line
	8450 3350 9450 3350
$Comp
L Allegro:R R2
U 1 1 5D6072E1
P 5350 4250
F 0 "R2" H 5420 4296 50  0000 L CNN
F 1 "1K" H 5420 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5280 4250 50  0001 C CNN
F 3 "" H 5350 4250 50  0000 C CNN
	1    5350 4250
	1    0    0    -1  
$EndComp
Text GLabel 5350 4050 1    50   Input ~ 0
5V
Wire Wire Line
	5350 4050 5350 4100
Text GLabel 5500 4400 2    50   Output ~ 0
RESET
Wire Wire Line
	5500 4400 5350 4400
Text GLabel 9450 3550 2    50   Input ~ 0
RESET
Wire Wire Line
	9450 3550 8450 3550
Text GLabel 9450 4100 2    50   Output ~ 0
EN_8A
Wire Wire Line
	9450 4100 8450 4100
Text GLabel 8750 3050 2    50   Input ~ 0
I_Sense
Wire Wire Line
	8750 2950 8450 2950
Text GLabel 1850 4750 0    50   Input ~ 0
EN_RS485
Text GLabel 1850 4250 0    50   Output ~ 0
RX
Text GLabel 1850 4500 0    50   Input ~ 0
TX
Wire Wire Line
	1850 4250 2050 4250
Wire Wire Line
	1850 4500 2050 4500
Wire Wire Line
	1850 4750 2050 4750
Text GLabel 4100 3050 2    50   Output ~ 0
5V
Wire Wire Line
	4000 3050 4100 3050
Text GLabel 1950 1550 0    50   Input ~ 0
5V
Text GLabel 1950 1750 0    50   Input ~ 0
EN_8A
Wire Wire Line
	1950 1550 2050 1550
Wire Wire Line
	1950 1750 2050 1750
Text GLabel 4150 1650 2    50   Output ~ 0
V_Servo
Wire Wire Line
	4150 1650 4000 1650
Text GLabel 10050 900  0    50   Input ~ 0
V_Servo
Text GLabel 9450 4200 2    50   Output ~ 0
servo_com
Text GLabel 10050 800  0    50   Input ~ 0
servo_com
Text GLabel 10050 1000 0    50   Input ~ 0
GND_S
$Comp
L Connector_Generic:Conn_01x04 Servo1
U 1 1 5D6311B5
P 10550 900
F 0 "Servo1" H 10630 892 50  0000 L CNN
F 1 "Conn_01x04" H 10630 801 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10550 900 50  0001 C CNN
F 3 "~" H 10550 900 50  0001 C CNN
	1    10550 900 
	1    0    0    -1  
$EndComp
Text GLabel 10050 1400 0    50   Input ~ 0
5V
Text GLabel 10050 1700 0    50   Input ~ 0
GND
Text GLabel 10050 1500 0    50   Output ~ 0
RX
Text GLabel 10050 1600 0    50   Input ~ 0
TX
Wire Wire Line
	10050 1400 10350 1400
Wire Wire Line
	10050 1500 10350 1500
Wire Wire Line
	10050 1600 10350 1600
Wire Wire Line
	10050 1700 10350 1700
Wire Wire Line
	10050 800  10350 800 
Wire Wire Line
	10050 900  10350 900 
Wire Wire Line
	10050 1000 10350 1000
Wire Wire Line
	4150 4700 4000 4700
Wire Wire Line
	4150 4500 4150 4700
Wire Wire Line
	4000 4200 4150 4200
Wire Wire Line
	4150 4200 4150 4400
Text GLabel 8750 2950 2    50   Input ~ 0
P_Sense
Wire Wire Line
	8750 3050 8450 3050
$Sheet
S 2050 5500 1900 1100
U 5D650508
F0 "Current_Sense" 50
F1 "Current_Sense.sch" 50
F2 "I_Sense" O R 3950 6000 100
$EndSheet
Text GLabel 10050 1100 0    50   Output ~ 0
P_Sense
Wire Wire Line
	10350 1100 10050 1100
$Comp
L Connector_Generic:Conn_01x04 Prg1
U 1 1 5D673D44
P 10550 1500
F 0 "Prg1" H 10630 1492 50  0000 L CNN
F 1 "Conn_01x04" H 10630 1401 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 10550 1500 50  0001 C CNN
F 3 "~" H 10550 1500 50  0001 C CNN
	1    10550 1500
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:LM75C U2
U 1 1 5D67ED42
P 9700 5650
F 0 "U2" H 9700 6331 50  0000 C CNN
F 1 "LM75C" H 9700 6240 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 9700 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm75b.pdf" H 9700 5650 50  0001 C CNN
	1    9700 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5D681488
P 9700 6200
F 0 "#PWR09" H 9700 5950 50  0001 C CNN
F 1 "GND" H 9705 6027 50  0000 C CNN
F 2 "" H 9700 6200 50  0001 C CNN
F 3 "" H 9700 6200 50  0001 C CNN
	1    9700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5550 10100 5650
Connection ~ 10100 5650
Wire Wire Line
	10100 5650 10100 5750
Wire Wire Line
	9700 6200 9700 6150
Wire Wire Line
	9700 6150 10100 6150
Wire Wire Line
	10100 6150 10100 5750
Connection ~ 9700 6150
Connection ~ 10100 5750
Text GLabel 8250 5150 0    50   Input ~ 0
5V
Wire Wire Line
	9700 5150 9100 5150
$Comp
L Allegro:R R5
U 1 1 5D68A793
P 9100 5300
F 0 "R5" H 9170 5346 50  0000 L CNN
F 1 "10K" H 9170 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9030 5300 50  0001 C CNN
F 3 "" H 9100 5300 50  0000 C CNN
	1    9100 5300
	1    0    0    -1  
$EndComp
Connection ~ 9100 5150
Wire Wire Line
	9100 5150 8800 5150
$Comp
L Allegro:R R4
U 1 1 5D68B564
P 8800 5300
F 0 "R4" H 8870 5346 50  0000 L CNN
F 1 "10K" H 8870 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8730 5300 50  0001 C CNN
F 3 "" H 8800 5300 50  0000 C CNN
	1    8800 5300
	1    0    0    -1  
$EndComp
Connection ~ 8800 5150
Wire Wire Line
	9100 5450 9100 5550
Wire Wire Line
	9100 5550 9300 5550
Wire Wire Line
	9300 5650 8800 5650
Wire Wire Line
	8800 5650 8800 5450
$Comp
L Allegro:C C5
U 1 1 5D690197
P 8400 5300
F 0 "C5" H 8515 5346 50  0000 L CNN
F 1 "0.1uF" H 8515 5255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8438 5150 50  0001 C CNN
F 3 "" H 8400 5300 50  0000 C CNN
	1    8400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 5150 8400 5150
Connection ~ 8400 5150
Wire Wire Line
	8400 5150 8800 5150
$Comp
L power:GND #PWR08
U 1 1 5D693C5F
P 8400 6200
F 0 "#PWR08" H 8400 5950 50  0001 C CNN
F 1 "GND" H 8405 6027 50  0000 C CNN
F 2 "" H 8400 6200 50  0001 C CNN
F 3 "" H 8400 6200 50  0001 C CNN
	1    8400 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 6200 8400 5450
Wire Wire Line
	8800 5650 8250 5650
Connection ~ 8800 5650
Wire Wire Line
	9100 5550 8250 5550
Connection ~ 9100 5550
Text GLabel 8250 5650 0    50   Input ~ 0
SCL
Text GLabel 8250 5550 0    50   BiDi ~ 0
SDA
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5D6B7ACB
P 5750 1200
F 0 "J1" H 5800 1517 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 5800 1426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 5750 1200 50  0001 C CNN
F 3 "~" H 5750 1200 50  0001 C CNN
	1    5750 1200
	1    0    0    1   
$EndComp
Text GLabel 5450 1100 0    50   Output ~ 0
MISO
Text GLabel 6150 1100 2    50   Input ~ 0
5V
Text GLabel 6150 1200 2    50   Input ~ 0
MOSI
Text GLabel 6150 1300 2    50   Input ~ 0
GND
Text GLabel 5450 1200 0    50   Output ~ 0
SCK
Text GLabel 5450 1300 0    50   Output ~ 0
RESET
Text GLabel 8600 2500 2    50   Input ~ 0
MOSI
Text GLabel 8600 2600 2    50   Input ~ 0
SCK
Text GLabel 8600 2400 2    50   Input ~ 0
MISO
Wire Wire Line
	5550 1300 5450 1300
Wire Wire Line
	5450 1200 5550 1200
Wire Wire Line
	5550 1100 5450 1100
Wire Wire Line
	6050 1100 6150 1100
Wire Wire Line
	6150 1200 6050 1200
Wire Wire Line
	6150 1300 6050 1300
Wire Wire Line
	8600 2600 8450 2600
Wire Wire Line
	8600 2500 8450 2500
Wire Wire Line
	8600 2400 8450 2400
Text GLabel 4100 6000 2    50   Output ~ 0
I_Sense
Wire Wire Line
	3950 6000 4100 6000
NoConn ~ 8450 2100
NoConn ~ 8450 2300
NoConn ~ 8450 3150
NoConn ~ 8450 3250
NoConn ~ 8450 2200
NoConn ~ 8450 4300
NoConn ~ 8450 4400
NoConn ~ 6550 3450
NoConn ~ 6550 3550
NoConn ~ 9300 5750
Text GLabel 4350 4400 2    50   Output ~ 0
B
Text GLabel 4350 4500 2    50   Output ~ 0
A
Wire Wire Line
	4350 4500 4150 4500
Wire Wire Line
	4350 4400 4150 4400
Text GLabel 1000 1800 2    50   Input ~ 0
A
Text GLabel 1000 1900 2    50   Input ~ 0
B
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5D58DBBD
P 800 1700
F 0 "J2" H 692 1985 50  0000 C CNN
F 1 "Term_Block" H 692 1894 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 800 1700 50  0001 C CNN
F 3 "~" H 800 1700 50  0001 C CNN
	1    800  1700
	-1   0    0    -1  
$EndComp
Text GLabel 1000 2350 2    50   Input ~ 0
V_in
Text GLabel 1000 2450 2    50   Input ~ 0
GND
Text GLabel 1000 2550 2    50   Input ~ 0
A
Text GLabel 1000 2650 2    50   Input ~ 0
B
$Comp
L Device:LED D2
U 1 1 5D59A269
P 1100 3600
F 0 "D2" V 1139 3483 50  0000 R CNN
F 1 "LED" V 1048 3483 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 1100 3600 50  0001 C CNN
F 3 "~" H 1100 3600 50  0001 C CNN
	1    1100 3600
	0    -1   -1   0   
$EndComp
$Comp
L Allegro:R R21
U 1 1 5D59AA17
P 1100 4050
F 0 "R21" H 1170 4096 50  0000 L CNN
F 1 "2K2" H 1170 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1030 4050 50  0001 C CNN
F 3 "" H 1100 4050 50  0000 C CNN
	1    1100 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D59B16E
P 1100 4300
F 0 "#PWR01" H 1100 4050 50  0001 C CNN
F 1 "GND" H 1105 4127 50  0000 C CNN
F 2 "" H 1100 4300 50  0001 C CNN
F 3 "" H 1100 4300 50  0001 C CNN
	1    1100 4300
	1    0    0    -1  
$EndComp
Text GLabel 1100 3350 1    50   Input ~ 0
V_in
Wire Wire Line
	1100 3350 1100 3450
Wire Wire Line
	1100 3750 1100 3900
Wire Wire Line
	1100 4200 1100 4300
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 5D597B71
P 800 2550
F 0 "J3" H 692 2125 50  0000 C CNN
F 1 "Term_Block" H 692 2216 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-4-5.08_1x04_P5.08mm_Horizontal" H 800 2550 50  0001 C CNN
F 3 "~" H 800 2550 50  0001 C CNN
	1    800  2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 4200 9450 4200
$Comp
L Allegro:R R24
U 1 1 5D5E4A4D
P 4550 2200
F 0 "R24" H 4620 2246 50  0000 L CNN
F 1 "0R" H 4620 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4480 2200 50  0001 C CNN
F 3 "" H 4550 2200 50  0000 C CNN
	1    4550 2200
	1    0    0    -1  
$EndComp
Text GLabel 4550 2350 3    50   Output ~ 0
5V
Text GLabel 4550 2050 1    50   Output ~ 0
V_Servo
$EndSCHEMATC
