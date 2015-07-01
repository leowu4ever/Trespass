
// run the motor one step
void driveMotor(int delayTime)
{
  if (!motorStop)                        // safety check
  {
 //   if (b1Stop) {
      digitalWrite(stp, HIGH);
      delay(delayTime);
      digitalWrite(stp, LOW);
    }
 // }
}

// start motor
void startMotor()
{
  motorStop = false;
  states[stp] = "1";

}

// stop running the motor
void stopMotor()
{
  motorStop = true;
  states[stp] = "0";

}

// change motor direction
void setMotorDir(int direction)
{
  if (direction == 0)
  {
    setComOn(dir);
  }
  else if (direction == 1)
  {
    setComOff(dir);
  }
}

// set motor speed
void setMotorSpeed(int speed)
{
  delayTime = speed;
//  if (speed == HIGH_SPEED)
//  {
//    states[stp] = "3";
//  } else if (speed == MEDIUM_SPEED)
//  {
//    states[stp] = "2";
//
//  }
//  else if (speed == LOW_SPEED)
//  {
//    states[stp] = "1";
//  }
}

