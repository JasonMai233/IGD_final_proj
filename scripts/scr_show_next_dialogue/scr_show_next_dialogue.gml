
function scr_show_next_dialogue(){


var obj = argument0;

if (ds_queue_size(obj.dialogue_queue) > 0) {
    obj.current_dialogue = ds_queue_dequeue(obj.dialogue_queue);
    obj.text = obj.current_dialogue.text;
    obj.speaker = obj.current_dialogue.speaker;
	obj.character_sprite = obj.current_dialogue.character; 
    obj.text_index = 0;
    obj.displayed_text = "";
    obj.dialogue_active = true;
} else {
    scr_stop_dialogue(obj);
}


}