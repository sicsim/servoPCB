
#include <Temperature_LM75_Derived.h>
Generic_LM75 PCB_temp;

//Setup
void setup() {
  while(!Serial) {}
  Serial.begin(115200);
  Wire.begin();
}

void loop() {
  Serial.print("PCB Temp = \t");
  
  //Read the temperature from the sensor and print it on the serial monitor
  Serial.print(PCB_temp.readTemperatureC()); 
  
  Serial.println("\t *C");
  delay(250);
}
