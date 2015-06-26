/*
  Handling GUI events
 */
void updateUI()
{
  states.setText(value);
}

// button event listener
void handleButtonEvents(GButton button, GEvent event) {
  if (button == emerStop && event == GEvent.CLICKED)
  {
    myPort.write("EMERSTOP");    
    println("EMERSTOP");
  }
}

// drop list event listener
void handleDropListEvents(GDropList list, GEvent event) { 
  if (list == speed)
  {
    setMotorSpeed(list.getSelectedText());
  }

  if (list == dir)
  {  
    setMotorDir(list.getSelectedText());
  }
}

void handleToggleControlEvents(GToggleControl option, GEvent event) 
{
  boolean checked = option.isSelected();
  //motor
  if (option == motor && checked)
  {
    startMotor();
  }
  if (option == motor && !checked)
  {
    stopMotor();
  }
  // c1 
  if (option == c1 && checked)
  {
    setComOn("c1");
  }
  if (option == c1 && !checked)
  {
    setComOff("c1");
  }
  //b1
  if (option == b1 && checked)
  {
    setComOn("b1");
  }
  if (option == b1 && !checked)
  {
    setComOff("b1");
  }
  //b2
  if (option == b2 && checked)
  {
    setComOn("b2");
  }
  if (option == b2 && !checked)
  {
    setComOff("b2");
  }
  //b3
  if (option == b3 && checked)
  {
    setComOn("b3");
  }
  if (option == b3 && !checked)
  {
    setComOff("b3");
  }
  //led1
  if (option == led1 && checked)
  {
    setComOn("led1");
  }
  if (option == led1 && !checked)
  {
    setComOff("led1");
  }
  //led2
  if (option == led2 && checked)
  {
    setComOn("led2");
  }
  if (option == led2 && !checked)
  {
    setComOff("led2");
  }
  //led3
  if (option == led3 && checked)
  {
    setComOn("led3");
  }
  if (option == led3 && !checked)
  {
    setComOff("led3");
  }
}

