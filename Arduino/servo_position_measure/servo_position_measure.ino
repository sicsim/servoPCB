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

int pos=0; //Used by the servo

//***********************************Setting up*****************************************
void setup() {
  pinMode(Servo_com, OUTPUT);
  Serial.begin(115200);   //Serial Monitor

  //Change the ADC reference voltage to external;
  analogReference(EXTERNAL);
  //analogReference(INTERNAL); //Internal NOT 1.1 V

  //Servo setup
  myservo.attach(Servo_com);  // attaches the servo on pin 9 to the servo object
 
  Serial.println("Setup Complete");
  delay(100);
}


//***********************************MAIN LOOP*****************************************
void loop() {
  int pos = 0;
  while (pos <= 160){ //Maximum angle has been determined to be 160 degrees
    my_servo(pos);  //position the servo motor
    
    delay(2000);    //Wait for the shaft to reach the desired position
    Serial.print( "Set Angle at \t");Serial.print( pos );  Serial.println( " Degrees");

    //Measure and display the sensed position
    Serial.print( "Measured angle \t"); Serial.print(ADC_to_Degrees()); Serial.println( " Degrees\n");
    pos = pos + 10;
  }
}

//Function converting the ADC value to position in degrees of the servo motor
int ADC_to_Degrees(){
  Position_ADC_value = analogRead(P_sense);   //Read the ADC
  
  float one_sixty_degrees_voltage=1.945F;  //Volts  170 degrees  //Maximum Angle
  float zero_degrees_voltage=0.518F;          //Volts 10 degrees //Linear region zero degrees.
  
  float one_sixty_degrees_ADC_value = (one_sixty_degrees_voltage/2.048)*1024;
  float zero_degrees_ADC_value =   (zero_degrees_voltage/2.048)*1024;

  Position_Degrees = ((Position_ADC_value - zero_degrees_ADC_value) / (one_sixty_degrees_ADC_value - zero_degrees_ADC_value) ) *160;
  return Position_Degrees;
}

//function adjusting angles to the linear region.
void my_servo(int adjusted_angle){
  //new zero is 10, max angle is 150
  myservo.write(adjusted_angle+10);
}
