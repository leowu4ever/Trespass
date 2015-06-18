// G4P_Knob_config example shows how shape changes relativly
// setRotation
/*  -------------- TO CLEAR UP ----------------
   how many pressure pads 
   how to run 
 */
GCheckbox c1, b1, b2, b3, p1, p2, p3;
int boxWidth = 50;
int boxHeight = 20;
void initGUI()
{
  createCBs();
}

void createCBs ()
{
  c1 = new GCheckbox (this, 0, boxHeight * 0, boxWidth, boxHeight, "c1");  
  b1 = new GCheckbox (this, 0, boxHeight * 1, boxWidth, boxHeight, "b1");  
  b2 = new GCheckbox (this, 0, boxHeight * 2, boxWidth, boxHeight, "b2");  
  b3 = new GCheckbox (this, 0, boxHeight * 3, boxWidth, boxHeight, "b3");  
  p1 = new GCheckbox (this, 0, boxHeight * 4, boxWidth, boxHeight, "p1");  
  p2 = new GCheckbox (this, 0, boxHeight * 5, boxWidth, boxHeight, "p2");  
  p3 = new GCheckbox (this, 0, boxHeight * 6, boxWidth, boxHeight, "p3");  
}

