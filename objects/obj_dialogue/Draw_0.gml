
draw_set_color(c_white);
// obj_dialogue Draw Event
draw_set_color(c_white);
if (dialogue_active) {
	if (character_sprite != undefined) {
		if(character_sprite = spr_p1|| character_sprite = spr_m1 || character_sprite = spr_m2||character_sprite = spr_m3 ||character_sprite = spr_m4) {
        draw_sprite_ext(character_sprite, floor(character_image_index), x + 900, y - 350, 1, 1, 0, c_white, 1);
	}else{
		draw_sprite_ext(character_sprite, floor(character_image_index), 300, 0, 1, 1, 0, c_white, 1);
	}
    }

    draw_sprite(spr_dialogue_bg, 0, x, y);
    

    draw_text(x + 20, y + 20, speaker);
    

    draw_text_ext(x + 20, y + 60, displayed_text, string_height(displayed_text), 850);

    if(character_sprite = spr_p1|| character_sprite = spr_m1 || character_sprite = spr_m2||character_sprite = spr_m3 ||character_sprite = spr_m4) {
        draw_sprite_ext(character_sprite, floor(character_image_index), x + 900, y - 350, 1, 1, 0, c_white, 1);
	}
}
