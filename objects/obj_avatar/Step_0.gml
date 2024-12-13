depth = -y;

if(just_teleported)
{
	jt_timer++;
	if(jt_timer >= 5)
	{
		jt_timer = 0;
		just_teleported = false;
	}
}

if (global.free_move)
{
	if (keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
	{	
		
		image_speed = 0.5;
		
		if(keyboard_check(vk_shift)) //simple running function
		{
			image_speed = 1;
			spd = 4;
			col_tolerance = 8;
		}
		else
		{
			image_speed = 0.5;
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
		is_moving = false; // nothing is pressed
	}
}
else
{
	is_moving = false; // when move is restricted in tutorial or dialogue
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
	if (!audio_is_playing(snd_walk_new) && !keyboard_check(vk_shift))
	{
		audio_stop_sound(snd_run_new);
		audio_play_sound(snd_walk_new, 10, true);
	}
	else if (!audio_is_playing(snd_run_new) && keyboard_check(vk_shift) )
	{
		audio_stop_sound(snd_walk_new);
		audio_play_sound(snd_run_new, 10, true);
	}
	
	if(image_index< 1)
		image_index = 1;
}
else
{
	audio_stop_sound(snd_run_new);
	audio_stop_sound(snd_walk_new);
	image_speed = 0;
	image_index = 0;
}

//show_debug_message(image_index);

var nearest_street_distance = instance_nearest(x-sprite_get_width(spr_road),y-sprite_get_height(spr_road),obj_road);
var dist_to_street = point_distance(x-sprite_get_width(spr_road), y-sprite_get_height(spr_road), nearest_street_distance.x, nearest_street_distance.y);
//show_debug_message(dist_to_street);

if (!audio_is_playing(snd_street_new)) // init street sound
	audio_play_sound(snd_street_new, 9, true);

if (dist_to_street >= 400)
	audio_sound_gain(snd_street_new, 0, 0);
else
	audio_sound_gain(snd_street_new, 1-1/400*dist_to_street, 0);