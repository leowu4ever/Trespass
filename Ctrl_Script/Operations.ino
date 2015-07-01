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

// return the angle ofa joint
int getJointAgl(int po)
{
  return map(analogRead(po), 0, 1023, 0, 360);
}

void updateAgls()
{
  states[14] = String(getJointAgl(po1));
  //states[15] = String(getJointAgl(po2));
  //states[16] = String(getJointAgl(po3));
}


