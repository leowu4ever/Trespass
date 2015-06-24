// draw dynamic simulation
// first only draw one arm
// knob can be tried out 

GKnob kb1, kb2;

void drawSim() 
{
  kb1 = new GKnob(this, (width - boxWidth) / 2, height / 2, 180, 180, 1f);
  // knob default setting
  kb1.setTurnRange(0, 360);
  kb1.setTurnMode(G4P.CTRL_ANGULAR);

}
