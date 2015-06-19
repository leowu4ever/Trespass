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

  // osc
  // start oscP5, telling it to listen for incoming messages at port 5001 */
  oscP5 = new OscP5(this, 5001);

  // set the remote location to be the localhost on port 5001
  myRemoteLocation = new NetAddress("127.0.0.1", 5001);
}

void draw() 
{
  if (value != null) 
  {
    println(value);     
    value = trim(value);  // get rid of whitespace
    // need to arrange data and update array 
    // updateSenFloList();
    // parseData(value);
  }
}


void serialEvent (Serial myPort) 
{
  // start to read the data when it meets new line mark
  value = myPort.readStringUntil('\n');
}

