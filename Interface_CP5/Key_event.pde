void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      float temp = speed.getValue();
      if (temp < 9) {
        speed.setValue(temp+1);
        int result = int(temp+1);
        myPort.write(result+48);
      }
      if (temp == 0) {
        startMotor();
      }
    } else if (keyCode == DOWN) {
      float temp = speed.getValue();
      if (temp > 0) {
        speed.setValue(temp-1);
        int result = int(temp-1);
        myPort.write(result+48);
      }
      if (temp == 1) {
        stopMotor();
      }
    } else if (keyCode == LEFT) {
      //send message to motor to move anti-cw
      if (isCW) {
        setMotorDir("Direction 1");
        isCW = false;
      }
    } else if (keyCode == RIGHT) {
      //send message to motor to move cw
      if (!isCW) {
        setMotorDir("Direction 0");
        isCW = true;
      }
    }
  } else { 
    if (key==TAB) { //emergency switch off
      //  brakecheckbox.activateAll();
      //  clutchMotorCheckbox.deactivateAll();
      b1.activateAll();
      b2.activateAll();
      b3.activateAll();
      stopMotor();
    } else if (key==' ') {
      b1.activateAll();
      b2.activateAll();
      b3.activateAll();
      stopMotor();
    } else if (key=='1') {
      // brakecheckbox.toggle(0);
      b1.toggle(0);
    } else if (key=='2') {
      // brakecheckbox.toggle(1);
      b2.toggle(0);
    } else if (key=='3') {
      // brakecheckbox.toggle(2);
      b3.toggle(0);
    } else if (key=='4') {
      //  brakecheckbox.toggle(3);
      light.toggle(0);
    } else if (key=='q') {
      // clutchMotorCheckbox.toggle(0);
      s2.toggle(0);
    } else if (key=='w') {
      // clutchMotorCheckbox.toggle(1);
      s3.toggle(0);
    } else if (key=='a') {
      // clutchMotorCheckbox.toggle(1);
      t2.toggle(0);
    } else if (key=='s') {
      // clutchMotorCheckbox.toggle(1);
      t3.toggle(0);
    } else if (key=='z') {
      // clutchMotorCheckbox.toggle(1);
      f2.toggle(0);
    } else if (key=='x') {
      // clutchMotorCheckbox.toggle(1);
      f3.toggle(0);
    } else if (key == '§') {
      if (speed.getValue() != fav) {
        speed.setValue(fav);
        startMotor();
        myPort.write(fav+48);
      }
    } else {
      println("unused key");
    }
  }
}

