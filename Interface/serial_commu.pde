// commands 8bytes 
// myPort.write("G");       
// do serial write to control Arduino
// parse data

// sending different commands to robot 

void serialEvent (Serial myPort) 
{
  // start to read the data when it meets new line mark
  value = myPort.readStringUntil('\n');
}


