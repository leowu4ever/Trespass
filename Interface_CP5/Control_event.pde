void controlEvent(ControlEvent theEvent) {

  // b1 
  if (theEvent.isFrom(b1)) {
    if (b1.getArrayValue()[0] == 0) {
      setComOff("b1");
    } else if (b1.getArrayValue()[0] == 1) {
      setComOn("b1");
    }
  }

  // b2
  if (theEvent.isFrom(b2)) {
    if (b2.getArrayValue()[0] == 0) {
      setComOff("b2");
    } else if (b2.getArrayValue()[0] == 1) {
      setComOn("b2");
    }
  }

  // b3 
  if (theEvent.isFrom(b3)) {
    if (b3.getArrayValue()[0] == 0) {
      setComOff("b3");
    } else if (b3.getArrayValue()[0] == 1) {
      setComOn("b3");
    }
  }


  if (theEvent.isFrom(light)) {
    if (light.getArrayValue()[0] == 0) {
      myColorBackground = 10;
      setComOff("light");
    } else  if (light.getArrayValue()[0] == 1) {
      myColorBackground = 100;
      setComOn("light");
    }
  }
  //TO DO 
  // light
  if (theEvent.isFrom(light)) {
    if (light.getArrayValue()[0] == 0) {
      println("light off");
    } else if (light.getArrayValue()[0] == 1) {
      println("light on");
    }
  }

  //TO DO
  // s2
  if (theEvent.isFrom(s2)) {
    if (s2.getArrayValue()[0] == 0) {
      println("s2 off");
    } else if (s2.getArrayValue()[0] == 1) {
      println("s2 on");
    }
  }

  //TO DO
  // s3
  if (theEvent.isFrom(s3)) {
    if (s3.getArrayValue()[0] == 0) {
      println("s3 off");
    } else if (s3.getArrayValue()[  0] == 1) {
      println("s3 on");
    }
  }

  //TO DO
  // t2
  if (theEvent.isFrom(t2)) {
    if (t2.getArrayValue()[0] == 0) {
      println("t2 off");
    } else if (t2.getArrayValue()[0] == 1) {
      println("t2 on");
    }
  }

  //TO DO
  // t3
  if (theEvent.isFrom(t3)) {
    if (t3.getArrayValue()[0] == 0) {
      println("t3 off");
    } else if (t3.getArrayValue()[0] == 1) {
      println("t3 on");
    }
  }

  //TO DO
  // f2
  if (theEvent.isFrom(f2)) {
    if (f2.getArrayValue()[0] == 0) {
      println("f2 off");
    } else if (f2.getArrayValue()[0] == 1) {
      println("f2 on");
    }
  }

  //TO DO
  // f3
  if (theEvent.isFrom(f3)) {
    if (f3.getArrayValue()[0] == 0) {
      println("f3 off");
    } else if (f3.getArrayValue()[0] == 1) {
      println("f3 on");
    }
  }

  if (theEvent.isFrom(speed)) {
    println("speed " + speed.getValue() );
  }
  
}

