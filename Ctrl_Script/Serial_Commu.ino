// send dynamic state of all components to processing
// in the form of
// c1, b1-b3, pp1-pp3, led1-led3, po1-po3 at initial point
void sendStates()
{
  //  for (int a = 2; a < stateLen; a++)
  //  {
  //    if (a != stateLen - 1)
  //    {
  //      Serial.print(states[a]);
  //      Serial.print(",");
  //    }
  //    else if (a == stateLen - 1)
  //    {
  //      Serial.println(states[a]);
  //    }
  //    driveMotor(delayTime);
  //  }


}

void serialResponse()
{
  // serial communication
  // if we get a valid byte, read analog ins:
  if (Serial.available() > 0) {
    // get incoming byte:
    serialData = Serial.read();
    Serial.print(serialData);
  }

  // serial.print to send data to processing
  // B1 ON
  if (serialData == 'A')
  {
    setComOn(b1);
  }
  // B1 OFF
  if (serialData == 'B')
  {
    setComOff(b1);
  }

  // B2 ON
  if (serialData == 'C')
  {
    setComOn(b2);
  }

  // B2 OFF
  if (serialData == 'D')
  {
    setComOff(b2);
  }

  // B3 ON
  if (serialData == 'E')
  {
    setComOn(b3);
  }

  // B3 OFF
  if (serialData == 'F')
  {
    setComOff(b3);
  }
  // LED1ON
  if (serialData == 'G')
  {
    setComOn(led1);
  }

  // LED1OFF
  if (serialData == 'H')
  {
    setComOff(led1);
  }
  // LED2ON
  if (serialData == 'I')
  {
    setComOn(led2);
  }

  // LED2OFF
  if (serialData == 'J')
  {
    setComOff(led2);
  }

  // LED3ON
  if (serialData == 'K')
  {
    setComOn(led3);
  }
  // LED3OFF
  if (serialData == 'L')
  {
    setComOff(led3);
  }
  // EMER STOP
  if (serialData == 'M')
  {
    // NOT ONLY JUST STOP THE MOTOR
    // BRAKES
    stopMotor();
  }

  // start motor
  if (serialData == 'N')
  {
    startMotor();
  }

  // stop motor
  if (serialData == 'O')
  {
    stopMotor();
  }

  // high motor speed
  if (serialData == 'P')
  {
    setMotorSpeed(HIGH_SPEED);
  }

  // medium motor speed
  if (serialData == 'Q')
  {
    setMotorSpeed(MEDIUM_SPEED);
  }

  // low motor speed
  if (serialData == 'R')
  {
    setMotorSpeed(LOW_SPEED);
  }

  // motor direction 0
  if (serialData == 'S')
  {
    setMotorDir(1);
  }

  // motor direction 1
  if (serialData == 'T')
  {
    setMotorDir(0);
  }

  if (serialData == '0')
  {
    digitalWrite(led3, LOW);
    stopMotor();
  }

  if (serialData == '1')
  {
    digitalWrite(led3, HIGH);
    startMotor();
    setMotorSpeed(40);

  }

  if (serialData == '2')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(35);
  }

  if (serialData == '3')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(30);

  }

  if (serialData == '4')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(25);

  }

  if (serialData == '5')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(20);

  }

  if (serialData == '6')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(15);

  }
  if (serialData == '7')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(10);
    
  }

  if (serialData == '8')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(5);

  }
  if (serialData == '9')
  {
    digitalWrite(led3, HIGH);
    setMotorSpeed(3);
  }
}
