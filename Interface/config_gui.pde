// G4P_Knob_config example shows how shape changes relativly
// setRotation
/*  -------------- TO CLEAR UP ----------------
 how many pressure pads 
 how to run 
 */

/* declare UI component here
 checkbox for 1 clutches & 3 brakes & 3 pressure pads 
 & 3 potentiometers & stepper motor
 */

GCheckbox c1, b1, b2, b3, pp1, pp2, pp3, led1, led2, led3;
GLabel po1, po2, po3;

int boxWidth = 90;
int boxHeight = 20;
void initGUI()
{
  createComps();
  drawSim();
}

void createComps ()
{
  c1 = new GCheckbox (this, 0, boxHeight * 0, boxWidth, boxHeight, "Clutch");  
  b1 = new GCheckbox (this, 0, boxHeight * 1, boxWidth, boxHeight, "Brake1");  
  b2 = new GCheckbox (this, 0, boxHeight * 2, boxWidth, boxHeight, "Brake2");  
  b3 = new GCheckbox (this, 0, boxHeight * 3, boxWidth, boxHeight, "Brake3");  
  pp1 = new GCheckbox (this, 0, boxHeight * 4, boxWidth, boxHeight, "pp1");  
  pp2 = new GCheckbox (this, 0, boxHeight * 5, boxWidth, boxHeight, "pp2");  
  pp3 = new GCheckbox (this, 0, boxHeight * 6, boxWidth, boxHeight, "pp3");
  led1 = new GCheckbox (this, 0, boxHeight * 7, boxWidth, boxHeight, "LED1");  
  led2 = new GCheckbox (this, 0, boxHeight * 8, boxWidth, boxHeight, "LED2");  
  led3 = new GCheckbox (this, 0, boxHeight * 9, boxWidth, boxHeight, "LED3");
  po1 = new GLabel (this, 0, boxHeight * 10, boxWidth, boxHeight, "Rotation 1: ...");
  po2 = new GLabel (this, 0, boxHeight * 11, boxWidth, boxHeight, "Rotation 2: ...");
  po3 = new GLabel (this, 0, boxHeight * 12, boxWidth, boxHeight, "Rotation 3: ...");
}

