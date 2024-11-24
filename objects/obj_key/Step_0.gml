if (place_meeting(x,y,obj_avatar))
{
	audio_play_sound(snd_key, 10, false);
	global.have_key = true;
	instance_destroy();
}