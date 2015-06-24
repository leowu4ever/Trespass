void setMotorSpeed(int speed)
{
  if (speed == 1) 
  {
    myPort.write("SPEED1");
  } else if (speed == 2) 
  {
    myPort.write("SPEED2");
  } else if (speed == 3) 
  {
    myPort.write("SPEED3");
  }
}

void setMotorDir(int dir)
{
  if (dir == 0)
  {
    myPort.write("DIR0");
  } else if (dir == 1)
  {
    myPort.write("DIR1");
  }
}

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
}
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
}

