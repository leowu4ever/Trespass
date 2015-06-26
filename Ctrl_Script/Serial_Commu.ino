// send dynamic state of all components to processing
// in the form of
// c1, b1-b3, pp1-pp3, led1-led3, po1-po3 at initial point

void sendStates()
{
  for (int a = 2; a < stateLen; a++)
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

void serialResponse()
{
  // serial communication
  // if we get a valid byte, read analog ins:
  if (Serial.available() > 0) {
    // get incoming byte:
    serialData = Serial.readString();
    Serial.print(serialData);
  }

  // serial.print to send data to processing
  // clutch
  if (serialData == "C1ON")
  {
    setComOn(c1);
  }
  if (serialData == "C1OFF")
  {
    setComOff(c1);
  }
  // brake1
  if (serialData == "B1ON")
  {
    setComOn(b1);
  }
  if (serialData == "B1OFF")
  {
    setComOff(b1);
  }
  // brake2
  if (serialData == "B2ON")
  {
    setComOn(b2);
  }
  if (serialData == "B2OFF")
  {
    setComOff(b2);
  }
  // brake3
  if (serialData == "B3ON")
  {
    setComOn(b3);
  }
  if (serialData == "B3OFF")
  {
    setComOff(b3);
  }
  // led1
  if (serialData == "LED1ON")
  {
    setComOn(led1);
  }
  if (serialData == "LED1OFF")
  {
    setComOff(led1);
  }
  // led2
  if (serialData == "LED2ON")
  {
    setComOn(led2);
  }
  if (serialData == "LED2OFF")
  {
    setComOff(led2);
  }
  // led3
  if (serialData == "LED3ON")
  {
    setComOn(led3);
  }
  if (serialData == "LED3OFF")
  {
    setComOff(led3);
  }
  // EMER STOP
  if (serialData == "EMERSTOP")
  {
    // NOT ONLY JUST STOP THE MOTOR
    // BRAKES
    stopMotor();
  }

  // start motor
  if (serialData == "START")
  {
    startMotor();
  }

  // stop motor
  if (serialData == "STOP")
  {
    stopMotor();
  }

  // motor speed
  if (serialData == "HIGH")
  {
    setMotorSpeed(HIGH_SPEED);
  }

  if (serialData == "MEDIUM")
  {
    setMotorSpeed(MEDIUM_SPEED);
  }
  if (serialData == "LOW")
  {
    setMotorSpeed(LOW_SPEED);
  }

  // motor direction
  if (serialData == "DIR0")
  {
    setMotorDir(1);
  }
  if (serialData == "DIR1")
  {
    setMotorDir(0);
  }
}
