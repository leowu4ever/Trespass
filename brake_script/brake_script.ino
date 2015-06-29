int led1 = 11;
float prop = 0.1;
boolean braking;
int po1 = A0;                  // potentiometer on base


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(led1, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:
  int sensorValue = analogRead(A0);
  Serial.println(map(sensorValue, 0, 1023, 0, 360));
  delay(1);        // delay in between reads for stability
  brakeAt(90);


}

void brakeAt(int degree) // getFirstAngle
{

  if (getJointAgl(po1) > degree * (1 - 0.5))
  {
    int a = map(getJointAgl(po1), 0, 255, 0, degree);
    setComOn(led1,a);
  }

}

int getJointAgl(int po)
{
  return map(analogRead(po), 0, 1023, 0, 360);
}

void setComOn(int pin, int a)
{
  analogWrite(pin, a);
}
