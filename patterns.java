boolean doStraight_2;
boolean doStraight_3;

void loop () 
{
	trackStraight();
}

void trackStraight () 
{
	if (doStraight_2) 
	{
		if (getJointAgl(po2) == getJointAgl(po1)) 
		{
			setComOn(b2);
		}
	}

	if (doStraight_3) 
	{
		if (getJointAgl(po3) == getJointAgl(po1)) 
		{
			setComOn(b3);
		}
	}
}

void staright2 ()
{
	doStraight_2 = true;
}

void staright3 ()
{
	doStraight_2 = true;
}