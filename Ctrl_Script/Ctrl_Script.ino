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
int dir = 3;
int c = 4;                    // clutch on base
int b1 = 5;                    // brake on base
int b2 = 6;                    // brake on mid joint
int b3 = 7;                    // brake on distal joint
int pp1 = 8;                   // pressure pad 1
int pp2 = 9;                   // pressure pad 2
int pp3 = 10;                   // pressure pad 3
int led1 = 11;                 // LED on base
int led2 = 12;                 // LED on mid joint
int led3 = 13;                 // LED on distal joint
int po1 = A0;                  // potentiometer on base
int po2 = A1;                  // potentiometer on mid joint
int po3 = A2;                  // potentiometer on distal joint

// c1, b1-b3, pp1-pp3, led1-led3, po1-po3 at initial point
// clutch engaged, brake off, pp off, led on, po 0 degree
int stateLen = 16;
String states[] = {"_", "_", "_", String(stateLen), 
        "0", "0", "0", "0", "0", "0", "0", "1", "1", "1", "0", "0", "0"};

bool emerStop;                 // emergency stop
int delayTime = 8;             /// d    elay between each step
String serialData;

void setup()
{
  Serial.begin(9600);
  pinAssign();
}
void loop()
{
  updateAgls();
  sendStates();
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
  pinMode(dir, OUTPUT);
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
