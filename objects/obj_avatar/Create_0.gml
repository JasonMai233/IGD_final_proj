spd = 1;
col_tolerance = 2;

image_speed = 0;
image_index = 0;
free_moving = true;

function setSpr(dir)
{
	switch (dir)
	{
		case "up":
			sprite_index = spr_avatar_back;
		break;
		
		case "down":
			sprite_index = spr_avatar_front;
		break;
		
		case "left":
			sprite_index = spr_avatar_left;
		break;
		
		case "right":
			sprite_index = spr_avatar_right;
		break;
	}
}

function dash(dir, dis)
{
	//show_debug_message("dash");
	audio_play_sound(snd_teleport, 10, false);
	switch (dir)
	{
		case 0:
			y -= dis; 
		break;
		case 1:
			y += dis; 
		break;
		case 2:
			x -= dis; 
		break;
		case 3:
			x += dis; 
		break;
	}
	
}

