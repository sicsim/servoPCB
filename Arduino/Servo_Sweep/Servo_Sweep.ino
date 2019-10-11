
#include <Servo.h>

Servo myservo;  // create servo object to control a servo
#define Servo_com 5

int pos = 0;    // variable to store the servo position

void setup() {
  //Servo setup
  myservo.attach(Servo_com);  // attaches the servo on pin 9 to the servo object
  Serial.begin(115200);   //Serial Monitor
}

void loop() {
  int pos = 0;
  while (pos <= 180){
    Serial.print( "Set Angle at ");Serial.print( pos );  Serial.println( " Degrees");
    myservo.write(pos);
    delay(5000);
    /*myservo.writeMicroseconds(0);
    delay(3000);
    myservo.writeMicroseconds(1500);
    delay(3000);
    myservo.writeMicroseconds(2000);
    delay(3000);*/
    
    
    /*myservo.write(0);
    delay(3000);    
    myservo.write(14);
    delay(3000);
    myservo.write(41);
    delay(3000);
    myservo.write(73);
    delay(3000);
    myservo.write(104);
    delay(3000);
    myservo.write(130);
    delay(3000);
    myservo.write(157);
    delay(3000);*/
    
    pos = pos + 10;
  }
}
