// send dynamic state of all components to processing
// in the form of
// c1, b1-b3, pp1-pp3, led1-led3, po1-po3 at initial point

void sendStates()
{
  for (int a = 3; a < stateLen; a++)
  {
    if (a != stateLen - 1)
    {
      Serial.print(states[a]);
      Serial.print(",");
    }
    else if (a == stateLen - 1)
    {
      Serial.println(states[a]);
    }
    driveMotor(delayTime);
  }
}

  //  // serial communication
  //  // if we get a valid byte, read analog ins:
  //  if (Serial.available() > 0) {
  //    // get incoming byte:
  //    serialData = Serial.readString();
  //    Serial.print(serialData);
  //  }
  //
  //  // serial.print to send data to processing
  //
  //  // check incoming byte and execute corresponding command
  //  if (serialData == "R")
  //  {
  //
  //  }
