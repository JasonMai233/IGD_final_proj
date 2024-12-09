if (distance_to_object(obj_avatar) <= 10)
{
	if(keyboard_check_pressed(vk_space) && !obj_dialogue_new.visible)
	{
		obj_dialogue_new.open_dialogue(self, dialogue_finished, dialogue_restart_num, dialogue_content);
	}
}


