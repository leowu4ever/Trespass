/**
 * Final year project
 *
 * Arduino program controls sevos and sensors
 * handles serial communication
 *
 * Arduino IDE (http://www.arduino.cc/en/Main/Software)
 *
 * @author Liqun Wu (1242421)
 */
 
 
#include <Servo.h>

int sl1, sl2, sr1, sr2, s1, s2;
int inByte = 0;         // incoming serial byte
Servo servo1, servo2;
String data;

void setup()
{
  Serial.begin(9600);

  servo1.attach(8);
  servo2.attach(9);
  // start serial port at 9600 bps:
  // establishContact();  // send a byte to establish contact until Processing responds 
  servo1.write(0);
  servo2.write(0);
}

void loop()
{
  // if we get a valid byte, read analog ins:
  if (Serial.available() > 0) {
    // get incoming byte:
    data = Serial.readString();
    Serial.print(data);
  }

  // read first analog input, divide by 4 to make the range 0-255:
  sl1 = digitalRead(7);
  // delay 10ms to let the ADC recover:
  delay(10);
  // read second analog input, divide by 4 to make the range 0-255:
  sl2 = 0;
  delay(10);
  sr1 = 0;
  delay(10);
  sr2 = 0;
  delay(10);
  s1 = servo1.read();
  s2 = servo2.read();
  
  // for debug use
  Serial.print(sl1);
  Serial.print(",");

  Serial.print(sl2);
  Serial.print(",");

  Serial.print(sr1);
  Serial.print(",");

  Serial.print(sr2);
  Serial.print(",");

  Serial.print(s1);
  Serial.print(",");

  Serial.println(s2);
 
   // response to manual control 
  if (data == "R") {
    servo1.write(0);
    servo2.write(0);
  }
  if (data == "G") {
    servo1.write(95);
    servo2.write(150);
    
  }
}



