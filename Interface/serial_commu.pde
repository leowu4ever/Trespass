// commands 8bytes 
// myPort.write("G");       
// do serial write to control Arduino
// parse data

// sending different commands to robot 
Serial myPort;       

void initPort()
{
  myPort = new Serial(this, Serial.list()[2], 9600);
  myPort.bufferUntil('\n');
}
void serialEvent(Serial myPort) 
{
  // start to read the data when it meets new line mark
  value = myPort.readStringUntil('\n');
}

void testPort()
{
  print(Serial.list());  // print all ports
}

void parseValue(String value)
{
}

