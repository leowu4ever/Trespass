void trackPatterns()
{
  if (s2ing)
  {
    if (getJointAgl(po2) == getJointAgl(po1))
    {
      setComOn(b2);
      stopS2();
    }
  }

  if (s3ing)
  {
    if (getJointAgl(po3) == getJointAgl(po1))
    {
      setComOn(b3);
      stopS3();
    }
  }

  if (t2ing)
  {
      
  }

  if (t3ing)
  {

  }

  if (f2ing)
  {

  }

  if (f3ing)
  {

  }

}

void doS2()
{
  s2ing = true;
}

void doS3()
{
  s3ing = true;
}

void doT2()
{
  t2ing = true;
}

void doT3()
{
  t3ing = true;
}

void doF2()
{
  f2ing = true;
}

void doF3()
{
  f3ing = true;
}

void stopS2 ()
{
  s2ing = false;
}

void stopS3 ()
{
  s3ing = false;
}

void stopT2 ()
{
  t2ing = false;
}

void stopT3 ()
{
  t3ing = false;
}

void stopF2 ()
{
  f2ing = false;
}

void stopF3 ()
{
  f3ing = false;
}
