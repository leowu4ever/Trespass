/*
  Ctrl_Script
  Control one dance robot
  1 clutches & 3 brakes & 3 pressure pads & 3 potentiometers & stepper motor
 
  Area: 
  robot - zone 1 - zone 2 - zone 3 - zone 4

  Working logic: 
  1. motor constant speed
  2. disengage clutch when zone < 4
  ------------ TO BE CONTINUED ------------
  
  by Leo Wu (King's College London)
 */

// digital pin assignment
int stp = 1;                   // step pin of stepper motor
int c1 = 2;                    // clutch on base
int b1 = 3;                    // brake on base
int b2 = 4;                    // brake on mid joint
int b3 = 5;                    // brake on distal joint
int pp1 = 6;                   // pressure pad 1
int pp2 = 7;                   // pressure pad 2
int pp3 = 8;                   // pressure pad 3
int led1 = 9;                  // LED on base
int led2 = 10;                 // LED on mid joint
int led3 = 11;                 // LED on distal joint
int po1 = A0;                  // potentiometer on base
int po2 = A1;                  // potentiometer on mid joint
int po3 = A2;                  // potentiometer on distal joint

bool emerStop;                 // emergency stop
int delayTime = 5;             /// delay between each step

void setup()
{
  initPins();
}
void loop()
{
  // respond to command from processing
  // emergency cut off
  driveMotor(delayTime);
  Serial.print(getJointAgl(po1));
}

// initialise pin assign
void initPins()
{
  // set pressure pad pins as input
  pinMode(pp1, INPUT);
  pinMode(pp2, INPUT);
  pinMode(pp3, INPUT);
  // set stepper motor, clutch, brake and led pins as output
  pinMode(stp, OUTPUT);
  pinMode(c1, OUTPUT);
  pinMode(b1, OUTPUT);
  pinMode(b2, OUTPUT);
  pinMode(b3, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
}
