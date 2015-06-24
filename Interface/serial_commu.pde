// commands 8bytes 
// myPort.write("G");       
// do serial write to control Arduino
// parse data

// sending different commands to robot 
Serial myPort;       

void serialEvent(Serial myPort) 
{
  // start to read the data when it meets new line mark
  value = myPort.readStringUntil('\n');
}

void testPort()
{
  print(Serial.list());  // print all ports
}

void startSerial()
{
  myPort.write("START");
  println("serial start");
}

void stopSerial() 
{
  myPort.write("STOP");
  println("serial stop");
}


