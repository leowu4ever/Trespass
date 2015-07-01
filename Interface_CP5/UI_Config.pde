void initUI ()
{
  b1 = cp5.addCheckBox("b1")
    .setPosition(100, 10)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("brake 1", 0);

  b2 = cp5.addCheckBox("b2")
    .setPosition(200, 10)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("brake 2", 0);

  b3 = cp5.addCheckBox("b3")
    .setPosition(300, 10)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("brake 3", 0);



  light = cp5.addCheckBox("l")
    .setPosition(400, 10)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("light", 0);

  s2 = cp5.addCheckBox("s2")
    .setPosition(200, 60)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("Straight 2", 0);

  s3 = cp5.addCheckBox("s3")
    .setPosition(300, 60)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("Straight 3", 0);

  t2 = cp5.addCheckBox("t2")
    .setPosition(200, 110)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("Triangle 2", 0);

  t3 = cp5.addCheckBox("t3")
    .setPosition(300, 110)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("Triangle 3", 0);

  f2 = cp5.addCheckBox("f2")
    .setPosition(200, 160)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("Folder up 2", 0);

  f3 = cp5.addCheckBox("f3")
    .setPosition(300, 160)
      .setColorForeground(color(120))
        .setColorActive(color(255, 0, 0))
          .setColorLabel(color(255))
            .setSize(40, 40)
              .addItem("Folder up 3", 0);

  speed = cp5.addSlider("speed")
    .setPosition(20, 10)
      .setSize(20, 300)
        .setRange(0, 9)
          .setNumberOfTickMarks(10);

  cp5.addBang("bang")
    .setPosition(40, 340)
      .setSize(280, 40)
        .setTriggerEvent(Bang.RELEASE)
          .setLabel("STOP");
}

