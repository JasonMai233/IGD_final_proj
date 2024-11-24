dialogue_counter_1 = 0;
dialogue_counter_2 = 0;
d1_finish = false;
d2_finish = false;

function within_distance(distance)
{
	return point_distance(x,y,obj_avatar.x, obj_avatar.y) <= distance;
}

function open_dialogue_1(distance, key, text_array) // tried to make counter as a variable but did not work, choose the dummy way instead
{
	if (within_distance(distance) && keyboard_check_pressed(key))
	{
		obj_textbox.activation(text_array[dialogue_counter_1], id);
		if (dialogue_counter_1 < array_length(text_array)-1)
			dialogue_counter_1++;
		else
			d1_finish = true;
	}
}

function open_dialogue_2(distance, key, text_array) // tried to make counter as a variable but did not work, choose the dummy way instead
{
	if (within_distance(distance) && keyboard_check_pressed(key))
	{
		obj_textbox.activation(text_array[dialogue_counter_2], id);
		if (dialogue_counter_2 < array_length(text_array)-1)
			dialogue_counter_2++;
		else
			d2_finish = true;
	}
}
