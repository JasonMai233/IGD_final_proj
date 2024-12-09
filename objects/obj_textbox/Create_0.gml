text = "default text";
target = obj_npc_base;

depth = -room_height;
function activation(new_text, targeted_npc)
{
	audio_play_sound(snd_talk, 10, false);
	x = obj_avatar.x - (sprite_width / 2);
	y = obj_avatar.y - 40 - sprite_height;
	target = targeted_npc;
	visible = true;
	text = new_text;
}
