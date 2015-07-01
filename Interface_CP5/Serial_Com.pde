// sending different commands to robot 
Serial myPort;     
Serial myPort2;

void initPort()
{
  myPort = new Serial(this, Serial.list()[2], 9600);
  //myPort2 = new Serial(this, Serial.list()[7], 9600);
  //myPort.bufferUntil('\n');
}
void serialEvent(Serial myPort) 
{
  // start to read the data when it meets new line mark
  // value = myPort.readStringUntil('\n');
  //  print (value);
}

void testPort()
{
  print(Serial.list());  // print all ports
}

void parseValue(String value)
{
}

