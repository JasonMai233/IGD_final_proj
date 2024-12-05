if(place_meeting(x,y,obj_avatar))
{
	switch (image_angle)
	{
		case 0:
			obj_avatar.x -= spd;
		break;
		case 90:
			obj_avatar.y += spd;
		break;
		case 180:
			obj_avatar.x += spd;
		break;
		case 270:
			obj_avatar.y -= spd;
		break;
	}
	
}








