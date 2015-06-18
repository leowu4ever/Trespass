/*
  Ctrl_Script
  Control one dance robot
  1 clutches & 3 brakes & 3 pressure pads & 3 potentiometers & stepper motor

  by Leo Wu (King's College London)
 */

// digital pin assign
int c1 = 1;          // clutch 1
int b1 = 2;          // brake 1
int b2 = 3;          // brake 2
int b3 = 4;          // brake 3
int p1 = 5;          // pressure pad 1
int p2 = 6;          // pressure pad 2
int p3 = 7;          // pressure pad 1
int stp = 8;         // step of stepper motor
int dir = 9;         // direction of stepper motor probably don't need

int po1 = A0;         // potentiometer 1
int po2 = A1;         // potentiometer 2
int po3 = A2;         // potentiometer 3

bool emerStop;       // emergency stop

void setup()
{
  initDigiPin();
}
void loop()
{
  // respond to processing
  // emergency cut off
  driveMotor(5);

}

void initDigiPin()
{
  // set pressure pad pins as input
  pinMode(p1, INPUT);
  pinMode(p2, INPUT);
  pinMode(p3, INPUT);

  // set clutch, brake and stepper motor pins as output
  pinMode(c1, OUTPUT);
  pinMode(b1, OUTPUT);
  pinMode(b2, OUTPUT);
  pinMode(b3, OUTPUT);
  pinMode(p3, OUTPUT);
  pinMode(stp, OUTPUT);
  pinMode(dir, OUTPUT);
}

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

// control sequence need to be clear up
// stepper motor runs in a while loop
void driveMotor(int time)
{
  if (!emerStop)
  {
    digitalWrite(stp, HIGH);
    delay(time);
    digitalWrite(stp, LOW);
  }
}

void stopMotor()
{
  emerStop = true;
}

// return the rotation of a joint
int getJointRot (int po)
{
  return map(analogRead(po), 0, 1023, 0, 360);
}

// potentiometer functions


