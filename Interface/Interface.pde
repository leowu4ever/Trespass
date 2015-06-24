/* 
 Create an interface which communicate with the robot via Arduino 
 1. Send commands
 2. Receive dynamic data of the robot 
 3. Sound 
 */

import g4p_controls.*;
import processing.serial.*;
import oscP5.*;
import netP5.*;

String value;   
boolean SerialRunin;
int width = 600;
int height = 400; 

void setup() 
{
  size(width, height, P2D);  
  background(255);
  initGUI();
  testPort();
  myPort = new Serial(this, Serial.list()[2], 9600);

  myPort.bufferUntil('@');
}

void draw() 
{
  background(255);
  if (value != null) 
  {
    println(value);     
    value = trim(value);  // get rid of whitespace
    // need to arrange data and update array 
    // updateSenFloList();
    // parseData(value);
    updateUI();
  }
}


