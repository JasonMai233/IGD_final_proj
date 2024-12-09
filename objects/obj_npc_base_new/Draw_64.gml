if (distance_to_object(obj_avatar) <= 10)
{
	if(keyboard_check_pressed(vk_space) && !obj_dialogue_new.visible)
	{
		obj_dialogue_new.open_dialogue(self, dialogue_finished, dialogue_restart_num, dialogue_content);
	}
}


// definition for three variable：
//dialogue_finished: check if the player had finished the conversation before or not
//dialogue_restart_num: if finished before, which dialogue dose it start again from
//dialogue content: actual dialogue data stored in new_npc_dialogues script.