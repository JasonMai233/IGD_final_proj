if(point_distance(x,y,obj_avatar.x, obj_avatar.y) < 100)
	state = STATE.OPEN;	
else
	state = STATE.CLOSE;
	
if(state == STATE.CLOSE)
{
	if(image_index > 0.5)
	{
		image_speed = -1;
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
}
else
{
	if(image_index < 3)
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = 3;
	}
}







