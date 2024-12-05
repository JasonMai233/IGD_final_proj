// obj_dialogue Step Event
if (dialogue_active) {
    if (text_index < string_length(text)) {
        text_index += text_speed;
        displayed_text = string_copy(text, 1, floor(text_index));
		
		 if (keyboard_check_pressed(vk_enter)){
            text_index = string_length(text)-1;
		  }
		
    } else {
        if (keyboard_check_pressed(vk_enter)) {
            scr_show_next_dialogue(self);
        }
    }

    if (character_sprite != undefined) {
        character_image_index += character_image_speed;
        if (character_image_index >= sprite_get_number(character_sprite)) {
            character_image_index = 0;
        }
    }

}

