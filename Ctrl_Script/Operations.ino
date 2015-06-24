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

