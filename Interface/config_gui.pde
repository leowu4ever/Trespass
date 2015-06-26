/* 
 declare UI component here
 checkbox for 1 clutches & 3 brakes & 3 pressure pads 
 & 3 potentiometers & stepper motor
 */

// UI for controlling robot 
GCheckbox c1, b1, b2, b3, led1, led2, led3, motor;    
GDropList speed, dir;
GButton emerStop;

// UI for displaying dynamic states
GLabel pp1, pp2, pp3, po1, po2, po3, states, action;
String[] speedItems = new String[] { 
  "Low", "Medium", "High"
};

String[] dirItems = new String[] { 
  "Direction 0", "Direction 1"
};

int boxWidth = width / 3;
int boxHeight = 20;

// init the UI components and default setting 
void initGUI()
{
  createComps();
  setTxtAlign();
}

// create UI component
void createComps()
{
  c1 = new GCheckbox (this, boxWidth * 0, boxHeight * 2, boxWidth, boxHeight, "Clutch"); 
  motor = new GCheckbox (this, boxWidth * 1, boxHeight * 2, boxWidth, boxHeight, "Motor"); 

  b1 = new GCheckbox (this, boxWidth * 0, boxHeight * 0, boxWidth, boxHeight, "Brake 1");  
  b2 = new GCheckbox (this, boxWidth * 1, boxHeight * 0, boxWidth, boxHeight, "Brake 2");  
  b3 = new GCheckbox (this, boxWidth * 2, boxHeight * 0, boxWidth, boxHeight, "Brake 3");  

  led1 = new GCheckbox (this, boxWidth * 0, boxHeight * 1, boxWidth, boxHeight, "LED 1");  
  led2 = new GCheckbox (this, boxWidth * 1, boxHeight * 1, boxWidth, boxHeight, "LED 2");  
  led3 = new GCheckbox (this, boxWidth * 2, boxHeight * 1, boxWidth, boxHeight, "LED 3");

  pp1 = new GLabel (this, boxWidth * 0, boxHeight * 5, boxWidth, boxHeight, "PP 1: ");  
  pp2 = new GLabel (this, boxWidth * 1, boxHeight * 5, boxWidth, boxHeight, "PP 2: ");  
  pp3 = new GLabel (this, boxWidth * 2, boxHeight * 5, boxWidth, boxHeight, "PP 3: ");

  po1 = new GLabel (this, boxWidth * 0, boxHeight * 6, boxWidth, boxHeight, "Joint 1: ");
  po2 = new GLabel (this, boxWidth * 1, boxHeight * 6, boxWidth, boxHeight, "Joint 2: ");
  po3 = new GLabel (this, boxWidth * 2, boxHeight * 6, boxWidth, boxHeight, "Joint 3: ");

  states = new GLabel (this, 0, boxHeight * 8, width, boxHeight, "States Log");
  action = new GLabel (this, 0, boxHeight * 9, width, boxHeight, "Action Log");


  speed = new GDropList (this, boxWidth * 0, boxHeight * 3, boxWidth, 100);
  speed.setItems(speedItems, 0);
  dir = new GDropList (this, boxWidth * 1, boxHeight * 3, boxWidth, 100);
  dir.setItems(dirItems, 0);

  emerStop = new GButton (this, 0, height - boxHeight * 1.5, width, boxHeight * 1.5, "Emergency Stop");
}

void setTxtAlign()
{
  pp1.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  pp2.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  pp3.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  po1.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  po2.setTextAlign( GAlign.LEFT, GAlign.CENTER );
  po3.setTextAlign( GAlign.LEFT, GAlign.CENTER );
}

