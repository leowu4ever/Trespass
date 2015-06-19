// set a component on
void setOn(int pin)
{
  digitalWrite(pin, HIGH);
}

// set a component off
void setOff(int pin)
{
  digitalWrite(pin, LOW);
}

// run the motor one step
void driveMotor(int delayTime)
{
  if (!emerStop)                        // safety check
  {
    digitalWrite(stp, HIGH);
    delay(delayTime);
    digitalWrite(stp, LOW);
  }
}

// stop running the motor
void stopMotor()
{
  emerStop = true;
}

// return the angle of a joint
int getJointAgl(int po)
{
  return map(analogRead(po), 0, 1023, 0, 360);
}


