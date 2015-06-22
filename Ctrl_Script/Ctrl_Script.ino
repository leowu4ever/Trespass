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
int stp = 2;                   // step pin of stepper motor
int c = 3;                    // clutch on base
int b1 = 4;                    // brake on base
int b2 = 5;                    // brake on mid joint
int b3 = 6;                    // brake on distal joint
int pp1 = 7;                   // pressure pad 1
int pp2 = 8;                   // pressure pad 2
int pp3 = 9;                   // pressure pad 3
int led1 = 10;                 // LED on base
int led2 = 11;                 // LED on mid joint
int led3 = 12;                 // LED on distal joint
int po1 = A0;                  // potentiometer on base
int po2 = A1;                  // potentiometer on mid joint
int po3 = A2;                  // potentiometer on distal joint

// c1, b1-b3, pp1-pp3, led1-led3, po1-po3 at initial point
// clutch engaged, brake off, pp off, led on, po 0 degree
int stateLen = 16;
String states[] = {"_", "_", "_", "1", "0", "0", "0", "0", "0", "0", "1", "1", "1", "0", "0", "0"};

bool emerStop;                 // emergency stop
int delayTime = 4;             /// d    elay between each step
String serialData;

void setup()
{
  Serial.begin(9600);
  pinAssign();
}
void loop()
{
  // respond to command from processing
  // emergency cut off
  updateAgls();
  sendStates();

  // pp logic
  if (digitalRead(pp1) == LOW)
  {
    setOn(led1);
    setOn(b1);

  } else if (digitalRead(pp1) == HIGH)
  {
    setOff(led1);
    setOff(b1);
  }
  //  // serial communication
  //  // if we get a valid byte, read analog ins:
  //  if (Serial.available() > 0) {
  //    // get incoming byte:
  //    serialData = Serial.readString();
  //    Serial.print(serialData);
  //  }
  //
  //  // serial.print to send data to processing
  //
  //  // check incoming byte and execute corresponding command
  //  if (serialData == "R")
  //  {
  //
  //  }
}

// pin assignment
void pinAssign()
{
  // set pressure pad pins as input
  pinMode(pp1, INPUT);
  pinMode(pp2, INPUT);
  pinMode(pp3, INPUT);
  // set stepper motor, clutch, brake and led pins as output
  pinMode(stp, OUTPUT);
  pinMode(c, OUTPUT);
  pinMode(b1, OUTPUT);
  pinMode(b2, OUTPUT);
  pinMode(b3, OUTPUT);
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
}

// init pin
void initPins()
{

}
