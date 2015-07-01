OscP5 oscP5;
NetAddress myRemoteLocation;

void initOSC()
{
  // start oscP5, telling it to listen for incoming messages at port 5001 */
  oscP5 = new OscP5(this, 54321);
  // set the remote location to be the localhost on port 5001
  myRemoteLocation = new NetAddress("10.0.0.10", 54321);
}

// checking osc message and do serial write to trigger actions
void oscEvent(OscMessage theOscMessage) 
{  
  // get the first value as an integer
  int oscValue = theOscMessage.get(0).intValue();
  // print(theOscMessage.addrPattern() + " ");
  // print out the message
  println(oscValue);

  if (oscValue == 0) {
    stopMotor();
    myPort.write(0+48);
  }
  if (oscValue == 1) {
    startMotor();
    myPort.write(1+48);
  }

  if (oscValue == 2) {
    startMotor();
    myPort.write(2+48);
  }  

  if (oscValue == 3) {
    startMotor();
    myPort.write(3+48);
  }

  if (oscValue == 4) {
    startMotor();
    myPort.write(4+48);
  }
  if (oscValue == 5) {
    startMotor();
    myPort.write(5+48);
  }
  if (oscValue == 6) {
    startMotor();
    myPort.write(6+48);
  }
  if (oscValue == 7) {
    startMotor();
    myPort.write(7+48);
  }
  if (oscValue == 8) {
    startMotor();
    myPort.write(8+48);
  }
  if (oscValue == 9) {
    startMotor();
    myPort.write(9+48);
  }

  //B1
  if (oscValue == 10) {
    myPort.write('A');
  }

  if (oscValue == 11) {
    myPort.write('B');
  }

  //B2
  if (oscValue == 12) {
    myPort.write('C');
  }
  if (oscValue == 13) {
    myPort.write('D');
  }

  //B3
  if (oscValue == 14) {
    myPort.write('E');
  }
  if (oscValue == 15) {
    myPort.write('F');
  }

  // LIGHT 
  if (oscValue == 16) {
    myPort.write('G');
  }

  if (oscValue == 17) {
    myPort.write('H');
  }

  //STOP 
  if (oscValue == 18) {
    myPort.write('M');
  }
}

