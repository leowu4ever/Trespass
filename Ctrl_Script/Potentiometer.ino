// return the angle of a joint
int getJointAgl(int po)
{
  return map(analogRead(po), 0, 1023, 0, 360);
}

void updateAgls()
{
  states[13] = String(getJointAgl(po1));
  //states[14] = String(getJointAgl(po2));
  //states[15] = String(getJointAgl(po3));
}
