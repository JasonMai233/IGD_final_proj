if (global.have_key && global.door_exist)
	open_dialogue_1(50, vk_space, global.npc2_dialogue_before_haveKey);
else if (!global.have_key && global.door_exist)
{
	//show_debug_message(d2_finish);
	open_dialogue_1(50, vk_space, global.npc2_dialogue_before_noKey);
	if (d1_finish)
		room_goto(rm_start);
}
else 
	open_dialogue_2(50, vk_space, global.npc2_dialogue_after);