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
int test;
String prefix;

void setup() {
  size(700, 400);
  background(0);
  smooth();
  cp5 = new ControlP5(this);
  initOSC();
  initPort();
  initUI();
}
void draw() {
}

void bang() {
  myPort.write("M");
}

