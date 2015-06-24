// run the motor one step
void driveMotor(int delayTime)
{
  if (!motorStop)                        // safety check
  {
    digitalWrite(stp, HIGH);
    delay(delayTime);
    digitalWrite(stp, LOW);
  }
}

// start motor
void startMotor()
{
  motorStop = false;
}

// stop running the motor
void stopMotor()
{
  motorStop = true;
}

// change motor direction
void setMotorDir()
{
  setOn(dir);
}

/*
  set motor speed
  delay 10, 6, 3
  speed  1, 2, 3
 */
void setMotorSpeed(int speed)
{
  if (speed == 1)
  {
    delayTime = 10;
  }
  else if (speed == 2)
  {
    delayTime = 6;
  }
  else if (speed == 3)
  {
    delayTime = 3;
  }
  states[stp] = String(speed);

}

