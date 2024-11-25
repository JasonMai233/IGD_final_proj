if(place_meeting(x,y,obj_avatar))
{
	audio_play_sound(snd_exit, 10, false);
	global.have_key = false;
	global.door_exist = true;
	room_goto(rm_start);
}

depth = 10000;