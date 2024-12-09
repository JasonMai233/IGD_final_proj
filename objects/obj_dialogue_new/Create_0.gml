center_x = display_get_gui_width()/2;
center_y = display_get_gui_height()/2;
drawn_surface = noone;

dialogue_owner = noone;

bug_buffer = 1; // quick fix to prevent skip of first line
dialogue_num = 1;
dialogue_content = noone;
visible = false;

speaker_blend = c_white;
nonspeaker_blend = c_black;
cur_selection = 0; // only used for dialogue with option

spr1_blend = noone;
spr2_blend = noone;

function open_dialogue(owner, finished, restart_num, dialogue)
{
	dialogue_owner = owner;
	dialogue_content = dialogue;
	if(finished)
		dialogue_num = restart_num;
	visible = true;
}

function reset_on_close()
{
	dialogue_owner.dialogue_finished = true;
	dialogue_owner = noone;
	bug_buffer = 1;	
}
