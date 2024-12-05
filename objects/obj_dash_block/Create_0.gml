image_blend = bld;

depth = obj_avatar.depth +1;

function display_dir(dir)
{
	image_index = dir;
	if (image_index >= dir)
		image_index = dir;
}

function dash(dir, dis)
{
	//show_debug_message("dash");
	obj_avatar.just_teleported = true;
	audio_play_sound(snd_teleport, 10, false);
	switch (dir)
	{
		case 0:
			obj_avatar.y = y+sprite_height/2 - dis; 
			obj_avatar.x = x+sprite_width/2;
		break;
		case 1:
			obj_avatar.y = y+sprite_height/2 + dis; 
			obj_avatar.x = x+sprite_width/2;
		break;
		case 2:
			obj_avatar.x = x+sprite_height/2 -dis; 
			obj_avatar.y = y+sprite_width/2;
		break;
		case 3:
			obj_avatar.x = x+sprite_height/2 + dis; 
			obj_avatar.y = y+sprite_width/2;
		break;
	}
	
}
