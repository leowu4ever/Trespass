// start the motor
void startMotor()
{
  myPort.write("START");
  action.setText("Motor: start");
}

// stop the motor
void stopMotor()
{  
  myPort.write("STOP");
    action.setText("Motor: stop");

}

// ajdust motor speed
void setMotorSpeed(String speed)
{
  if (speed == "High") 
  {
    myPort.write("HIGH");
  } else if (speed == "Medium") 
  {
    myPort.write("MEDIUM");
  } else if (speed == "Low") 
  {
    myPort.write("LOW");
  }
  action.setText("Speed: " + speed);
}

// change motor direction
void setMotorDir (String dir)
{
  if (dir == "Direction 0") 
  {  
    myPort.write("DIR0");
  } else if (dir == "Direction 1") 
  {
    myPort.write("DIR1");
  }
  action.setText("Direction: " + dir);
}

// set a component on 
void setComOn (String com) 
{
  if (com == "c1")
  {
    myPort.write("C1ON");
  } else if (com == "b1")
  {
    myPort.write("B1ON");
  } else if (com == "b2")
  {
    myPort.write("B2ON");
  } else if (com == "b3")
  {
    myPort.write("B3ON");
  } else if (com == "led1")
  {
    myPort.write("LED1ON");
  } else if (com == "led2")
  {
    myPort.write("LED2ON");
  } else if (com == "led3")
  {
    myPort.write("LED3ON");
  }
  println(com + " ON");
  action.setText(com + " ON");
}

// set a component off
void setComOff (String com) 
{
  if (com == "c1")
  {
    myPort.write("C1OFF");
  } else if (com == "b1")
  {
    myPort.write("B1OFF");
  } else if (com == "b2")
  {
    myPort.write("B2OFF");
  } else if (com == "b3")
  {
    myPort.write("B3OFF");
  } else if (com == "led1")
  {
    myPort.write("LED1OFF");
  } else if (com == "led2")
  {
    myPort.write("LED2OFF");
  } else if (com == "led3")
  {
    myPort.write("LED3OFF");
  }
  println(com + " OFF");
  action.setText(com + " OFF");
}

