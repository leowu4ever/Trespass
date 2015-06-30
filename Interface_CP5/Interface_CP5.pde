import controlP5.*;
import processing.serial.*;
import oscP5.*;
import netP5.*;

ControlP5 cp5; 
CheckBox b1, b2, b3, light, s2, s3, t2, t3, f2, f3;

Slider speed;
int myColorBackground = 10;
boolean isCW = true;
int fav = 2;       // fav speed

String value;      // serial data

void setup() {
  size(700, 400);
  smooth();
  cp5 = new ControlP5(this);
  testPort();
  initPort();
  initUI();
}
void draw() {
  background(myColorBackground);
}

public void bang() {
  //
}

