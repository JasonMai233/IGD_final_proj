if (visible) // visible means activated
{
	global.free_move = false;
	// create a draw surface to avoid redraw issue
	if (!surface_exists(drawn_surface)) {
    drawn_surface = surface_create(room_width, room_height);
	}

	// Set the surface as the drawing target
	surface_set_target(drawn_surface);
	
	var cur_dialogue = dialogue_content[dialogue_num];
	
	var speaker = cur_dialogue[0]
	var first_char = dialogue_content[0][0];
	var second_char = dialogue_content[0][1];
	switch(speaker)
	{
		case first_char: // first char speaking
			spr1_blend = speaker_blend;
			spr2_blend = nonspeaker_blend;
		break;
		case second_char: // second char speaking
			spr1_blend = nonspeaker_blend;
			spr2_blend = speaker_blend;
		break;
		default: // non speaking, can be used for narrator
			spr1_blend = nonspeaker_blend;
			spr2_blend = nonspeaker_blend;
		break;
	}
	
	draw_clear_alpha(c_black, 0.4);
	draw_sprite_ext(first_char, 0, center_x - 300, center_y - 50, 1, 1, 0, spr1_blend, 1);
	draw_sprite_ext(second_char, 0, center_x + 300, center_y - 50, 1, 1, 0, spr2_blend, 1);
	draw_sprite(spr_textbox_new, 0, center_x, center_y + 300);
	draw_set_color(c_white);
	draw_set_font(font_dialogue);
	draw_text_ext(center_x - 450, center_y + 250,cur_dialogue[1], 25, 600);
	
	if(array_length(cur_dialogue) == 4) // length 4 means dialogue with options
	{
		var choices = cur_dialogue[3];
		for(i = 0; i < array_length(choices); i++) // draw options on the right
		{
			if (i == cur_selection)
			{
				draw_set_color(c_yellow);
				var option = "> " + cur_dialogue[3][i][0];
			}
			else
			{
				draw_set_color(c_white);
				var option = cur_dialogue[3][i][0];
			}
			draw_text(center_x + 150, center_y + 350 - 25*i, option);
		}
		
		// switch option
		if(keyboard_check_pressed(ord("W")))
		{
			if (cur_selection != array_length(choices)-1)
				cur_selection ++;
			else
				cur_selection = 0;
		}
			
		if(keyboard_check_pressed(ord("S")))
		{
			if (cur_selection != 0)
				cur_selection --;
			else
				cur_selection = array_length(choices)-1;
		}
	}

	
	// goto next line
	if(keyboard_check_pressed(vk_space))
	{
		if (bug_buffer > 0)
			bug_buffer --;
		else
		{
			if (dialogue_num == array_length(dialogue_content)-1) // reached end of conversation
			{
				visible = false;
				reset_on_close();
			}
			else if (array_length(cur_dialogue) == 4) // dialogue with choices
			{
				dialogue_num = cur_dialogue[3][cur_selection][1];
				show_debug_message(dialogue_num);
			}
			else if(cur_dialogue[2] == noone) // dialogue without loop
			{
				dialogue_num ++;
				show_debug_message(dialogue_num);
			}
			else
			{
				dialogue_num = cur_dialogue[2]; // dialogue with loop
				show_debug_message(dialogue_num);
			}
		}
	}
	// Reset to the application surface
	surface_reset_target();
	draw_surface(drawn_surface, 0, 0);
}
