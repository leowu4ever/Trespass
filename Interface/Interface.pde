/* 
 Create an interface which communicate with the robot via Arduino 
 1. Send commands
 2. Receive dynamic data of the robot 
 3. Sound 
 */

import g4p_controls.*;
import processing.serial.*;

/* declare UI component here
 checkbox for 1 clutches & 3 brakes & 3 pressure pads 
 & 3 potentiometers & stepper motor
 */

Serial myPort;       
String value;        
int width = 600;
int height = 400; 

void setup() 
{
  size(width, height, P2D);  
  fill(255);
  noStroke();
  rect(boxWidth, 0, width, height);

  initGUI();
  print(Serial.list());  // print all ports
  myPort = new Serial(this, Serial.list()[2], 9600);
  myPort.bufferUntil('\n');
}

void draw() 
{
  if (value != null) 
  {
    println(value);     
    value = trim(value);  // get rid of whitespace
  }
}

void serialEvent (Serial myPort) 
{
  // start to read the data when it meets new line mark
  value = myPort.readStringUntil('\n');
}

