/* Institution:   University of Cape Town
   Author:        Simplicity S Dywili
   Date:          26 September 2019
   Project:       Servo PCB
*/

#include <Arduino.h>
#include <Wire.h>
#include <TimerOne.h>
#include <Temperature_LM75_Derived.h>
#include <Servo.h>

#define P_sense A0
#define I_sense A1
#define EN_RS485 3
#define EN_8A 4
#define Servo_com 5

//Initialising objects/classes
Generic_LM75 temperature;
Servo myservo;  

//Initialise variables
float Sensing_Resistor=0.002;  //Ohms
int Amplifier_Gain=50;        //

int Current_ADC_value=0;
float Current_Amperes=0;
int Position_ADC_value=0;
int Position_Degrees=0;
float PCB_Temperature=25.55;

int pos=0; //Used by the servo

//***********************************Setting up*****************************************
void setup() {
  pinMode(EN_RS485, OUTPUT);
  pinMode(EN_8A, OUTPUT);
  pinMode(Servo_com, OUTPUT);
  digitalWrite(EN_8A,HIGH);
  digitalWrite(EN_RS485,LOW);
  
  Serial.begin(115200);   //Serial Monitor

  //Change the ADC reference voltage to external;
  analogReference(EXTERNAL);
  
  Serial.println("Setup Complete");
  delay(100);
}


//***********************************MAIN LOOP*****************************************
void loop() {
  Serial.print( "Current Amps : \t");
  Serial.println(ADC_to_Amperes());
  delay(250); //delay 250 milliseconds
}

//Function to convert the ADC value to current in Amperes
float ADC_to_Amperes(){
  Current_ADC_value = analogRead(I_sense);
  float ADC_voltage = (((Current_ADC_value*1.0F)/1024)*2.048);  //Voltage to to the ADC input
  float Sensing_resistor_voltage =  ADC_voltage/Amplifier_Gain; //Voltage drop across the sensing resistor
  Current_Amperes =  Sensing_resistor_voltage/Sensing_Resistor; //Actual current through the sensing resistor
  return Current_Amperes;
}
