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

//Inititalising objects/classes
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
  //analogReference(INTERNAL); //Internal NOT 1.1 V
  
  //Timer setup
  Timer1.initialize(5000);
  Timer1.attachInterrupt(readSensors); // blinkLED to run every 0.15 seconds

  //Servo setup
  myservo.attach(Servo_com);  // attaches the servo on pin 9 to the servo object
  
  Wire.begin(); // join i2c bus (address optional for master)
  Serial.println("Setup Complete");
  delay(100);
}


//***********************************MAIN LOOP*****************************************
void loop() {
  
  //myservo.write(180);
  Serial.print( "Current Amps : \t");
  Serial.println(ADC_to_Amperes());
  
  Serial.print( "Servo Position Degrees : \t");
  Serial.println(ADC_to_Degrees());
  
  Serial.print( "PCB Temperature : \t");
  Serial.println(temperature.readTemperatureC());

  //delay(2000);
  myservo.write(0);
  delay(200);
  
  Serial.println( "*******\n\n");
}


void readSensors(void){
   Current_ADC_value = analogRead(I_sense);
   Position_ADC_value = analogRead(P_sense);
   //PCB_Temperature = temperature.readTemperatureC();
   Serial.println(Current_ADC_value);
}

float ADC_to_Amperes(){
  Current_Amperes = Current_ADC_value/Amplifier_Gain/Sensing_Resistor;
  return Current_Amperes;
}

int ADC_to_Degrees(){
  
  float one_eighty_degrees_voltage=2.048F;  //Volts
  float zero_degrees_voltage=0.0F;          //Volts
  
  float one_eighty_degrees_ADC_value = (one_eighty_degrees_voltage/2.048)*1024;
  float zero_degrees_ADC_value =   (zero_degrees_voltage/2.048)*1024;

  Position_Degrees = ((Position_ADC_value - zero_degrees_ADC_value) / (one_eighty_degrees_ADC_value - zero_degrees_ADC_value) ) *180;
  return Position_Degrees;
}
