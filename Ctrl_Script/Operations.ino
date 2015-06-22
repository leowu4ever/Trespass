// set a component off
void setOff(int pin)
{
  digitalWrite(pin, LOW);
  states[pin] = "0";
}

// set a component on
void setOn(int pin)
{
  digitalWrite(pin, HIGH);
  states[pin] = "1";
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

void updateAgls()
{
  states[13] = String(getJointAgl(po1));
  //states[14] = String(getJointAgl(po2));
  //states[15] = String(getJointAgl(po3));

}
