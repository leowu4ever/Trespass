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

GCheckbox c1, b1, b2, b3, led1, led2, led3, connect;
GLabel pp1, pp2, pp3, po1, po2, po3, states;

int boxWidth = 90;
int boxHeight = 20;
void initGUI()
{
  createComps();
  setTxtAlign();
}

void createComps()
{
  c1 = new GCheckbox (this, 0, boxHeight * 0, boxWidth, boxHeight, "Clutch");  
  b1 = new GCheckbox (this, 0, boxHeight * 2, boxWidth, boxHeight, "Brake1");  
  b2 = new GCheckbox (this, 0, boxHeight * 3, boxWidth, boxHeight, "Brake2");  
  b3 = new GCheckbox (this, 0, boxHeight * 4, boxWidth, boxHeight, "Brake3");  
  led1 = new GCheckbox (this, 0, boxHeight * 6, boxWidth, boxHeight, "LED1");  
  led2 = new GCheckbox (this, 0, boxHeight * 7, boxWidth, boxHeight, "LED2");  
  led3 = new GCheckbox (this, 0, boxHeight * 8, boxWidth, boxHeight, "LED3");
  connect = new GCheckbox (this, 0, height - boxHeight, boxWidth, boxHeight, "Connect");
  pp1 = new GLabel (this, 0, boxHeight * 10, boxWidth, boxHeight, "PP 1: ");  
  pp2 = new GLabel (this, 0, boxHeight * 11, boxWidth, boxHeight, "PP 2: ");  
  pp3 = new GLabel (this, 0, boxHeight * 12, boxWidth, boxHeight, "PP 3: ");
  po1 = new GLabel (this, 0, boxHeight * 14, boxWidth, boxHeight, "Joint 1: ");
  po2 = new GLabel (this, 0, boxHeight * 15, boxWidth, boxHeight, "Joint 2: ");
  po3 = new GLabel (this, 0, boxHeight * 16, boxWidth, boxHeight, "Joint 3: ");
  states = new GLabel (this, boxWidth, 0, 250, boxHeight, "Robot states");
}

void setTxtAlign()
{
  pp1.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  pp2.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  pp3.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  po1.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  po2.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  po3.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  states.setTextAlign( GAlign.LEFT, GAlign.CENTER );
}

