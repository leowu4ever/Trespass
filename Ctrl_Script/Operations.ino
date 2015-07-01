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


