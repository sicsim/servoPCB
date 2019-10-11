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
#define Servo_com 5

//Inititalising objects/classes
Servo myservo;  

int Position_ADC_value=0;
int Position_Degrees=0;
float PCB_Temperature=25.55;
String incoming="message";

int pos=0; //Used by the servo

//***********************************Setting up*****************************************
void setup() {
  pinMode(Servo_com, OUTPUT);
  Serial.begin(9600);   //Serial Monitor

  //Change the ADC reference voltage to external;
  analogReference(EXTERNAL);
  //analogReference(INTERNAL); //Internal NOT 1.1 V
  
  //Timer setup
  Timer1.initialize(5000);
  Timer1.attachInterrupt(readSensors); // blinkLED to run every 0.15 seconds

  //Servo setup
  myservo.attach(Servo_com);  // attaches the servo on pin 9 to the servo object
 
  Serial.println("Setup Complete");
  delay(100);
  Serial.println("Ready for commands");
}


//***********************************MAIN LOOP*****************************************
void loop() {

  if (Serial.available()) {
    incoming = Serial.readString();
    Serial.println(incoming);
      incoming.replace('\n', ' ');
      incoming.replace('\r', ' ');
      incoming.trim();
    
    
    if(incoming == "Angle 160"){
      my_servo(160);
    }
    else if(incoming == "Angle 90"){
      my_servo(90);
    }
    else if(incoming == "Angle 45"){
      my_servo(45);
    }
    else{
      my_servo(0);
    }
  
    delay(3000);
    Serial.print("Received your message :");
    Serial.print( "The motor is now at angle: "); Serial.print(ADC_to_Degrees()); Serial.println( " Degrees\n");
  }
}

//Runs every 50 ms
void readSensors(void){
   Position_ADC_value = analogRead(P_sense);
}


int ADC_to_Degrees(){
  
  Position_ADC_value = analogRead(P_sense);
  
  float one_sixty_degrees_voltage=1.945F;  //Volts  170
  float zero_degrees_voltage=0.518F;          //Volts 10
  
  float one_sixty_degrees_ADC_value = (one_sixty_degrees_voltage/2.048)*1024;
  float zero_degrees_ADC_value =   (zero_degrees_voltage/2.048)*1024;

  Position_Degrees = ((Position_ADC_value - zero_degrees_ADC_value) / (one_sixty_degrees_ADC_value - zero_degrees_ADC_value) ) *160;
  return Position_Degrees;
}


void my_servo(int adjusted_angle){
  //new zero is 10, max angle is 150
  myservo.write(adjusted_angle+10);
}
