depth = -y;

if (free_moving)
{
	if (keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
	{	
		
		image_speed = 1;
		
		if(keyboard_check(vk_shift)) //simple running function
		{
			spd = 4;
			col_tolerance = 8;
		}
		else
		{
			spd = 1;
			col_tolerance = 2;
		}
		
		if (keyboard_check(ord("W")) )
		{
			p_dir = DIR.N;
			is_moving = true;
			if (!place_meeting(x,y-col_tolerance,obj_collideable))
				y -= spd;
		}
		else if (keyboard_check(ord("S")) )
		{
			p_dir = DIR.S;
			is_moving = true;
			if (!place_meeting(x,y+col_tolerance,obj_collideable))
				y += spd;
		}

		if (keyboard_check(ord("A")))
		{
			p_dir = DIR.W;
			is_moving = true;
			if (!place_meeting(x-col_tolerance,y,obj_collideable))
				x -= spd;
		}
		else if (keyboard_check(ord("D")))
		{
			p_dir = DIR.E;
			is_moving = true;
			if (!place_meeting(x+col_tolerance,y,obj_collideable))
				x += spd;
		}
	}
	else
	{
		is_moving = false;
	}
}

//45 degree movement check
if(keyboard_check(ord("W")))
{
	if(keyboard_check(ord("A")))
		p_dir = DIR.NW;
	else if (keyboard_check(ord("D")))
		p_dir = DIR.NE;
}
else if (keyboard_check(ord("S")))
{
	if(keyboard_check(ord("A")))
		p_dir = DIR.SW;
	else if (keyboard_check(ord("D")))
		p_dir = DIR.SE;
}

setSpr();

if(is_moving)
{
	if(image_index< 1)
		image_index = 1;
}
else
{
	image_speed = 0;
	image_index = 0;
}

//show_debug_message(image_index);