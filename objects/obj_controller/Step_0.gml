if (keyboard_check_pressed(vk_enter)) {
    var dialogue_obj = instance_find(obj_dialogue, 0);
    if (dialogue_obj != noone && !dialogue_obj.dialogue_active) {
		 var character_sprite_A = spr_protagonist; 
        var character_sprite_B = spr_shopowner;
		
        scr_start_dialogue(dialogue_obj, "Hello!", " Protagonist ",character_sprite_A);
        scr_start_dialogue(dialogue_obj, "Hey! Hello!", "Shop Owner",character_sprite_B);
       
		
		
    }
}
