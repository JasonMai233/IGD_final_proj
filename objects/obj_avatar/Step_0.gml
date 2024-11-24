if (free_moving)
{
	if (keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
	{	
		
		image_speed = 1;
		
		if(keyboard_check(vk_shift)) //simple running function
			spd = 4;
		else
			spd = 1;
		
		if (keyboard_check(ord("W")) )
		{
			setSpr("up");
			if (!place_meeting(x,y-col_tolerance,obj_collideable))
				y -= spd;
		}
		else if (keyboard_check(ord("S")) )
		{
			setSpr("down");
			if (!place_meeting(x,y+col_tolerance,obj_collideable))
				y += spd;
		}

		if (keyboard_check(ord("A")))
		{
			setSpr("left");
			if (!place_meeting(x-col_tolerance,y,obj_collideable))
				x -= spd;
		}
		else if (keyboard_check(ord("D")))
		{
			setSpr("right");
			if (!place_meeting(x+col_tolerance,y,obj_collideable))
				x += spd;
		}
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
}

