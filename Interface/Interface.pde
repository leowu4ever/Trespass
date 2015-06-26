/* 
 Create an interface which communicate with the robot via Arduino 
 1. Send commands
 2. Receive dynamic data of the robot 
 
 by Leo Wu (King's College London)
 */

import g4p_controls.*;
import processing.serial.*;
import oscP5.*;
import netP5.*;

String value;   
int width = 230;            // window width
int height = 250;           // window height

void setup() 
{
  initWnd();
  initGUI();
  initPort();
}

void draw() 
{
  drawBg();
  if (value != null) 
  {
    println(value);     
    value = trim(value);          // get rid of whitespace
    updateUI();
  }
}

// draw grid every frame
void drawBg()
{
  background(255);
  noStroke();
  rect (0, boxHeight * 0, width, boxHeight * 4);
  rect (0, boxHeight * 5, width, boxHeight * 2);
  rect (0, boxHeight * 8, width, boxHeight * 2);
  fill(227, 230, 255);
}

// initialise window
void initWnd()
{
  frame.setTitle("Trespass");
  size(width, height, P2D);  
  smooth();
  background(255);
}

