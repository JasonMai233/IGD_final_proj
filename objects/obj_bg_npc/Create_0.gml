image_speed = 0;
path_counter = 0;

dir = noone;
dist_counter = 0;
spawn_protection = 600;

function move()
{
	switch(dir)
	{
		case DIR.S:
			y += spd;
			image_index = 2;
		break;
		case DIR.N:
			y -= spd;
			image_index = 3;
		break;
		case DIR.W:
			x -= spd;
			image_index = 1;
		break;
		case DIR.E:
			x += spd;
			image_index = 0;
		break;
	}
	dist_counter += spd;
}

function in_room() 
{
    if (x >= 0 && x < room_width && y >= 0 && y < room_height) {
        return true;
    }
    return false;
}