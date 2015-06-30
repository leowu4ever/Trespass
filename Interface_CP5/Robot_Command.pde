// start the motor
void startMotor()
{
  myPort.write('N');
  println("Motor: start");
}

// stop the motor
void stopMotor()
{  
  myPort.write('O');
  println("Motor: stop");
}

// change motor direction
void setMotorDir (String dir)
{
  if (dir == "Direction 0") 
  {  
    myPort.write('S');
    println("clockwise");
  } else if (dir == "Direction 1") 
  {
    myPort.write('T');
    println("anti-clockwise");
  }
}

// set a component on 
void setComOn (String com) 
{
  if (com == "b1")
  {
    myPort.write('A');
  } else if (com == "b2")
  {
    myPort.write('C');
  } else if (com == "b3")
  {
    myPort.write('E');
  } else if (com == "light") 
  {
    myPort.write('G');
  }
  println(com + " ON");
}

// set a component off
void setComOff (String com) 
{
  if (com == "b1")
  {
    myPort.write('B');
  } else if (com == "b2")
  {
    myPort.write('D');
  } else if (com == "b3")
  {
    myPort.write('F');
  } else if (com == "light") 
  {
    myPort.write('H');
  }
  println(com + " OFF");
}

