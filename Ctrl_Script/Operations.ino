// set a component off
void setComOff(int pin)
{
  digitalWrite(pin, LOW);
  states[pin] = "0";
}

// set a component on
void setComOn(int pin)
{
  digitalWrite(pin, HIGH);
  states[pin] = "1";

}

void brakeAt(int degree) // getFirstAngle
{
  if (braking)
  {
    if (getJointAgl(po1) > degree * (1 - prop))
    {
        int a = map(getJointAgl(po1), 0, degree, 0, 255);
        setComOn(led1);      
    }
  }
}

